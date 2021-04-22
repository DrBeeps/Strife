#ifndef FIR_FILTER_H
#define FIR_FILTER_H

#include <Arduino.h>

#define FIR_FILTER_LENGTH 10 // 10 point

class FIRFilter
{
public:
    float buf[FIR_FILTER_LENGTH];
    uint8_t bufIndex;

    float out;

    FIRFilter() {}
    ~FIRFilter() {}
    
    void FIRFilter_Init();
    float FIRFilter_Update(float inp);
};

#endif