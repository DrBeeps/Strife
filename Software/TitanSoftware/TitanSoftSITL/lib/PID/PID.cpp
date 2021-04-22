#include "PID.h"
#include <Arduino.h>

double PID::update(double input, double dt)
{
    error = setpoint - input;
    // integral += error * dt;
    integral = constrain(integral + (error * dt), -iLimit, iLimit);

    derivative = (error - prevError) / dt;
    prevError = error;
    return (Kp * error) + (Ki * integral) + (Kd * derivative);
}
