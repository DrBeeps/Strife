#ifndef DATA_POINT_H
#define DATA_POINT_H

#include <Arduino.h>

#include <FlightState.h>

struct FlightData
{
  uint64_t elapsedFlightTime;

  FlightState logState;

  float fcBattVoltage;
  float vehicleAlt;

  double gX;
  double gY;
  double gZ;
  double aX;
  double aY;
  double aZ;

  double roll;
  double pitch;
  double yaw;

  double yPID;
  double zPID;

  double yServo;
  double zServo;

  double deviationY;
  double deviationZ;

  double temp;

  int pyro3;
  int pyro4;

  bool abort;
};

#endif