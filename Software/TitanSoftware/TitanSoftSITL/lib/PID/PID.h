#ifndef PID_H
#define PID_H

class PID
{
public:
    double Kp = 0, Ki = 0, Kd = 0;
    double setpoint = 0;
    double input;

    PID() {  }; // Default initializer
    PID(double p, double i, double d) { Kp = p, Ki = i; Kd = d; }; // Gains initializer
    PID(double p, double i, double d, double s) { Kp = p, Ki = i; Kd = d; setpoint = s; }; // Full initializer

    double getKp() { return Kp; }
    double getKi() { return Ki; }
    double getKd() { return Kd; }
    void setKp(double newKp) { Kp = newKp; }
    void setKi(double newKi) { Ki = newKi; }
    void setKd(double newKd) { Kd = newKd; }

    double update(double input, double dt); // Updates PID maths and returns new output

    double getError() { return error; } 
    double getIntegral() { return integral; }
    double getDerivative() { return derivative; }
    
    double getSetpoint() { return setpoint; }
    void setSetpoint(double newSetpoint) { setpoint = newSetpoint; } 
private:
    double error = 0;
    double integral = 0;
    double derivative = 0;
    double prevError = 0;

    int iLimit = 5;
}; 

#endif