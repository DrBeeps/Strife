#include <Arduino.h>

#include <BMI088.h>
#include <SD.h>
#include <Servo.h>
#include <Wire.h>
#include <Adafruit_BMP280.h>

#include <Orientation.h>
#include <PID.h>
#include <SITL.h>

#include <DataPoint.h>
#include <FlightState.h>
#include <FIRFilter.h>



SITL Sim;

Bmi088Accel accel(Wire,0x19);
Bmi088Gyro gyro(Wire,0x69);

Adafruit_BMP280 bmp;

int status;

Servo tvcZ;
Servo tvcY;

const int pyro3 = 29;
const int pyro4 = 33;
const int statusled = 13;



FlightState currentState;

const int LAUNCH_CHECK = 20;

FIRFilter baroFIR;

Orientation ori;
EulerAngles gyroData;
EulerAngles gyroOut;
RawAccel accelData;

double g_bias[3];

int count = 0;
const int averageAmount = 500;

double elapsedFlightTime;

uint64_t thisLoopMicros = 0;
uint64_t lastMainLoopMicros = 0;
uint64_t checkStartTimeMicros = 0;
uint64_t checkChuteTimeMicros = 0;
uint64_t checkLandedTimeMicros = 0;
uint64_t logDtMicros = 0;
double dt = 0;

uint64_t nextServoMicros = 0;
const uint8_t servoHz = 16;
const uint64_t servoMicros = 1000000 / servoHz;

uint64_t lastLogUpdate = 0;
const uint8_t logHz = 100;
const uint64_t logMicros = 1000000 / logHz;

double pidYOut, pidZOut;
double angleYOut, angleZOut;
double finalAngleYOut, finalAngleZOut;
double deviationY, deviationZ;

int servoYOffset = -20;
int servoZOffset = 7;
int homeYAngle = 90;
int homeZAngle = 90;
int SGR = 6;

double kp = 0.25;
double ki = 0.1;
double kd = 0.1;
double setpoint = 0;
PID pidY = {kp, ki, kd, setpoint};
PID pidZ = {kp, ki, kd, setpoint};

float force;
int radius = 37;

File logFile;
uint8_t logFileNumber;
int failure;
// bool abort;

float startAlt;
float aproxAlt;
float aproxFilteredAlt;
float maxAlt = 0;
float curAlt;

double flightAlt;
double fcBatt;

int pyro3Val = 0;
int pyro4Val = 0;

double temp;

int DATA_ERROR;

int test = 1;


// Sample Time
double T_Program = 0.01;
unsigned long T_Program_micros = T_Program * 1000000;
unsigned long timer_run;

// PID
unsigned long currentTime, previousTime;
double elapsedTime,elapsedTimeSeg;
double errorPID;
double lastError;
double input, output, setPoint;
double cumError, rateError;
double okp, oki, okd;
double out;

// Saturation and Real Actuator
double Actuator_reduction = 5;
double Max_Actuator_Angle = 5 * RAD_TO_DEG;
double Max_servo_Angle = Max_Actuator_Angle * Actuator_reduction;

// SinL
float theta, servo_command, Alt_prev;
int parachute = 0;
float GyroY, AccX, AccZ, Alt;



void ledStatusBlink()
{
    digitalWrite(statusled, HIGH);
    delay(500);
    digitalWrite(statusled, LOW);
    delay(500);
    digitalWrite(statusled, HIGH);
    delay(500);
    digitalWrite(statusled, LOW);
    delay(500);
    digitalWrite(statusled, HIGH);
    delay(500);
    digitalWrite(statusled, LOW);
    delay(500);
}

void getGyroBias()
{
    while (count < averageAmount)
    {
        gyro.readSensor();
        g_bias[0] += gyro.getGyroX_rads();
        g_bias[1] += gyro.getGyroY_rads();
        g_bias[2] += gyro.getGyroZ_rads();
        count += 1;
        Serial.print(".");
        delay(10);
    }
    Serial.println();
    g_bias[0] /= (double)averageAmount;
    g_bias[1] /= (double)averageAmount;
    g_bias[2] /= (double)averageAmount;

    Serial.print(g_bias[0], 8);
    Serial.print(" ");
    Serial.print(g_bias[1], 8);
    Serial.print(" ");
    Serial.print(g_bias[2], 8);
    Serial.println(" ");
}

void startup()
{
    // Serial.begin(115200);
    Serial.begin(1000000); // only for SITL (remove for actual flight)
    Sim.StartSITL(); // also only for SITL

    delay(1000);

    /* ===== BMI088 INIT ===== */
    status = accel.begin();
    if (status < 0) 
    {
        Serial.println("Accel Initialization Error");
        Serial.println(status);
        while (1) {}
    }

    status = gyro.begin();
    if (status < 0) 
    {
        Serial.println("Gyro Initialization Error");
        Serial.println(status);
        while (1) {}
    }

    /* ===== BARO INIT ===== */

    if (!bmp.begin())
    {
        Serial.println("BMP280 Initialization Error");
        while (1) {}
    }

    bmp.setSampling(Adafruit_BMP280::MODE_NORMAL,     /* Operating Mode. */
                  Adafruit_BMP280::SAMPLING_X2,     /* Temp. oversampling */
                  Adafruit_BMP280::SAMPLING_X16,    /* Pressure oversampling */
                  Adafruit_BMP280::FILTER_X16,      /* Filtering. */
                  Adafruit_BMP280::STANDBY_MS_500); /* Standby time. */

    startAlt = bmp.readAltitude(1022);

    baroFIR.FIRFilter_Init();
}

void setupPins()
{
    tvcY.attach(36);
    tvcZ.attach(37);
    tvcY.writeMicroseconds(1500);
    tvcZ.writeMicroseconds(1500);
    pinMode(pyro3, OUTPUT);
    pinMode(pyro4, OUTPUT);
    pinMode(statusled, OUTPUT);
}

void startTiming()
{
    thisLoopMicros = micros();
    lastMainLoopMicros = micros();
    nextServoMicros = micros() + servoMicros;
    lastLogUpdate = micros() + logMicros;
}

void setupSD()
{
  // Serial.print("Initializing SD card...");

  if (!SD.begin(BUILTIN_SDCARD)) 
  {
    // Serial.println("Card failed, or not present");
    return;
  }

  // Serial.println("card initialized.");
}

void logTest()
{
    if (!SD.begin(BUILTIN_SDCARD))
    {
        failure |= SD_INIT_TIMEOUT;
        return;
    }
    else
    {
        char logFileName[16] = "";
        for (int i = 0; i < 256; i++)
        {
            sprintf(logFileName, "log%.3u.csv", i);
            
            if (!SD.exists(logFileName))
            {
                logFile = SD.open(logFileName, FILE_WRITE);
                logFile.println("test");
                logFile.flush();
                return;
            }
        }
    }
}

void logTestData()
{
    if (logFile)
    {
        char line[200] = "";
        sprintf(line, "test, %c", test);
        logFile.println(line);
        logFile.flush();
    }
}

void makeLogFile()
{
    if (!SD.begin(BUILTIN_SDCARD))
    {
        // Serial.println("Failed to create log file");
        failure |= SD_INIT_TIMEOUT;
        return;
    }
    else
    {
        char logFileName[16] = "";
        for (int i = 0; i < 256; i++)
        {
            sprintf(logFileName, "log%.3u.csv", i);
            if (!SD.exists(logFileName))
            {
                logFile = SD.open(logFileName, FILE_WRITE);
                logFile.println("elapsedFlightTime,flightState,battVoltage,vehicleAlt,gX,gY,gZ,aX,aY,aZ,roll,pitch,yaw,yPID,zPID,yServo,zServo,zPIDError,zPIDIntegral,zPIDDerivative,yPIDError,yPIDIntegral,yPIDDerivative,deviationY,deviationZ,temp,pyro3,pyro4,abort");
                logFile.flush();
                return;
            }
        }
    }
}

void logData()
{
    if (logFile && thisLoopMicros > lastLogUpdate + logMicros)
    {
        char line[350] = "";
        logDtMicros = thisLoopMicros - lastLogUpdate;
        sprintf(line, "%15f,%d,%15f,%15f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%15f,%15f,%15f,%15f,%15f,%15f,%15f,%15f,%15f,%15f,%15f,%15f,%15f,%u,%u",
            ((double)thisLoopMicros / 1000000.),
            currentState,
            fcBatt,
            flightAlt,
            gyroData.roll,
            gyroData.pitch,
            gyroData.yaw,
            accelData.x,
            accelData.y,
            accelData.z,
            (gyroOut.roll * RAD_TO_DEG),
            (gyroOut.pitch * RAD_TO_DEG),
            (gyroOut.yaw * RAD_TO_DEG),
            angleYOut,
            angleZOut,
            finalAngleYOut,
            finalAngleZOut,
            pidZ.getError(),
            pidZ.getIntegral(),
            pidZ.getDerivative(),
            pidY.getError(),
            pidY.getIntegral(),
            pidY.getDerivative(),
            deviationY,
            deviationZ,
            temp,
            pyro3Val,
            pyro4Val);
        logFile.println(line);
        logFile.flush();

        lastLogUpdate = thisLoopMicros;
    }
}

void updateTiming()
{
    thisLoopMicros = micros();
    dt = (double)(thisLoopMicros - lastMainLoopMicros) / 1000000.;
    lastMainLoopMicros = thisLoopMicros;
}

void checkBaro()
{
    curAlt = baroFIR.FIRFilter_Update(bmp.readAltitude(1022));
    curAlt -= startAlt;
}

void checkIMU()
{
    gyro.readSensor();
    accel.readSensor();

    gyroData.roll = gyro.getGyroX_rads();
    gyroData.pitch = -gyro.getGyroY_rads();
    gyroData.yaw = -gyro.getGyroZ_rads();

    accelData.x = accel.getAccelX_mss();
    accelData.y = accel.getAccelY_mss();
    accelData.z = accel.getAccelZ_mss();

    temp = accel.getTemperature_C();

    force = accelData.x - 9.81;

    ori.update(gyroData, dt);
    gyroOut = ori.toEuler();
}


void checkIMU_SITL()
{
    if (micros() >= timer_run + T_Program_micros)
    {  
    dt = double(micros() - timer_run);
    // micros to seconds
    dt /= 1000000;
    timer_run = micros();  

    // SinL Simulation
    Sim.getSimData(GyroY, AccX, AccZ, Alt);

    // Integrate the Gyros to find the angle.
    theta += (GyroY * RAD_TO_DEG) * dt;

    double setpoint = 10 * DEG2RAD;
    out = PID(setpoint, theta);
    servo_command = PID2Servo(out);
    
    // Parachute
    parachute = Deploy_Parachute(Alt);

    // Real servo
    double servo_center = 90;
    servo.write(-servo_command + servo_center); 
    
    // Simulated servo and parachute
    Sim.sendCommand(servo_command, parachute); 
    }
}

void updatePID()
{
    pidYOut = pidY.update(gyroOut.pitch * RAD_TO_DEG, dt);
    pidZOut = pidZ.update(gyroOut.yaw * RAD_TO_DEG, dt);

    pidYOut = pidYOut;
    pidZOut = pidZOut; // #signflip again because this control system makes no sense

    angleYOut = constrain(pidYOut, -5, 6);
    angleZOut = constrain(pidZOut, -6, 6);

    finalAngleYOut = constrain(((angleYOut * SGR) + homeYAngle) + servoYOffset, 0, 180);
    finalAngleZOut = constrain(((-angleZOut * SGR) + homeZAngle) + servoZOffset, 0, 180);

    // Serial.print("finalAngleYOut: "); Serial.print(finalAngleYOut); Serial.print("\t");
    // Serial.print("finalAngleZOut: "); Serial.print(finalAngleZOut); Serial.print("\n");
    if (thisLoopMicros >= nextServoMicros)
    {
        // Serial.println("Wrote to servos");
        tvcY.write(finalAngleYOut);
        tvcZ.write(finalAngleZOut);
        nextServoMicros += servoMicros;
    }
}

/*
void checkLaunch()
{
  if(imuRawData.accelX > launchDetect) launchDetectStart = thisLoopMicros;
  if(thisLoopMicros > launchDetectStart + launchDetectTime) currentState = FLIGHT;
  Serial.print("Accel X "); Serial.print(imuRawData.accelX); Serial.print("\t");
}
*/

void checkAbort()
{
    if (gyroOut.pitch * RAD_TO_DEG > 45)
    {
        currentState = ABORT;
    } else if (gyroOut.pitch * RAD_TO_DEG < -45)
    {
        currentState = ABORT;
    }
    if (gyroOut.yaw * RAD_TO_DEG > 45)
    {
        currentState = ABORT;
    } else if (gyroOut.yaw * RAD_TO_DEG < -45)
    {
        currentState = ABORT;
    }
}

void checkLaunch()
{
    if(accelData.x > LAUNCH_CHECK)
        currentState = FLIGHT;
}

void checkBurnout() 
{

}

void checkApogee()
{
    maxAlt = max(maxAlt, curAlt);
    if (curAlt > maxAlt - 0.15)
        checkStartTimeMicros = thisLoopMicros;
    if (((double)thisLoopMicros / 1000000.) > (((double)checkStartTimeMicros / 1000000.) + 0.25))
    {
        currentState = BALLISTIC_DESCENT;
        checkChuteTimeMicros = thisLoopMicros;
    }
}

void checkChuteStop()
{
    if (curAlt < maxAlt - 0.5) // change this number for actual flight.
    {
        digitalWrite(pyro3, HIGH);
        Serial.print("Quick AF");
    }
    else
    {
        checkChuteTimeMicros = thisLoopMicros;
    }
    if (((double)thisLoopMicros / 1000000.) > (((double)checkChuteTimeMicros / 1000000.) + 1)) // allow time for pyro to fire
        currentState = CHUTE_DESCENT;
}

void checkLanded()
{
    checkLandedTimeMicros = thisLoopMicros;
    if (((double)thisLoopMicros / 1000000.) > (((double)checkLandedTimeMicros / 1000000.) + 7.5))
        currentState = GROUND_SAFE;
}

void landed()
{
    // logFile.flush();
    // logFile.close();

    tvcY.write(90 + servoYOffset);
    tvcZ.write(90 + servoZOffset);

    Serial.println("Flight complete");

    // flash led and stop any other non-essential functions
}

void abortFlight()
{
    digitalWrite(pyro3, HIGH);
    delay(500);
    digitalWrite(pyro3, LOW);

    tvcY.write(90 + servoYOffset);
    tvcZ.write(90 + servoZOffset);

    Serial.println("FLIGHT ABORT");
}

void setup()
{
    startup();
    setupPins();
    setupSD();
    makeLogFile();

    ledStatusBlink();

    currentState = GROUND_IDLE;
    // getGyroBias();
    // startTiming();
    Sim.StartSITL();
}

void loop() 
{










    // updateTiming();

    /*
    Serial.print("TIME: "); Serial.print((double)thisLoopMicros / 1000000.); Serial.print("\t");
    Serial.print("CHUTE: "); Serial.print((double)checkChuteTimeMicros / 1000000.); Serial.print("\t");
    */

    // checkIMU();
    // checkBaro();

    // checkAbort();

    /*
    Serial.print("GY: "); Serial.print(gyroData.pitch); Serial.print("\t");
    Serial.print("GZ: "); Serial.print(gyroData.yaw); Serial.print("\t");
    Serial.print("PITCH: "); Serial.print(gyroOut.pitch * RAD_TO_DEG); Serial.print("\t");
    Serial.print("YAW: ");Serial.print(gyroOut.yaw * RAD_TO_DEG); Serial.print("\t");
    Serial.print("PIDY: "); Serial.print(angleYOut); Serial.print("\t");
    Serial.print("PIDZ: ");Serial.print(angleZOut); Serial.print("\t");
    Serial.print("curAlt: "); Serial.print(curAlt); Serial.print("\t");
    Serial.print("maxAlt: "); Serial.print(maxAlt); Serial.print("\t");
    Serial.print("state: "); Serial.print(currentState); Serial.print("\n");
    */

    /*
    switch(currentState)
    {
        case GROUND_IDLE:
            digitalWrite(pyro4, HIGH); // Ignite ascent motor
            checkLaunch();
            break;
        case FLIGHT:
            digitalWrite(pyro4, LOW); // Turn off ascent motor pyro after launch detection (so I don't drain the lipos)
            updatePID();
            checkApogee();
            break;
        case BALLISTIC_DESCENT: 
            checkChuteStop();
            break;
        case CHUTE_DESCENT:
            digitalWrite(pyro3, LOW);
            // checkLanded();
            currentState = GROUND_SAFE;
            break;
        case GROUND_SAFE:
            landed();
            break;
        case ABORT:
            abortFlight();
            break;
        case STATIC_ABORT:
            abortFlight();
            break;
        case STATIC_FIRE:
            break;
    }
    */
    

    // logData();
}
