#include <FIRFilter.h>

static float FIR_IMPULSE_RESPONSE[FIR_FILTER_LENGTH] = {0.1f, 0.1f, 0.1f, 0.1f, 0.1f, 0.1f, 0.1f, 0.1f, 0.1f, 0.1f}; // 10 point moving average filter (these are the filter coefficients 1/10)
// if this was a 4 point moving average filter it would be = {0.25f, 0.25f, 0.25f, 0.25f}; or 1/4, 4 times.

void FIRFilter::FIRFilter_Init()
{
    for (uint8_t n = 0; n < FIR_FILTER_LENGTH; n++)
    {
        buf[n] = 0.0f;
    }

    bufIndex = 0;

    out = 0.0f;
}

float FIRFilter::FIRFilter_Update(float input)
{
    buf[bufIndex] = input;

    bufIndex++;

    if (bufIndex == FIR_FILTER_LENGTH)
    {
        bufIndex = 0;
    }

    out = 0.0f;

    uint8_t sumIndex = bufIndex;

    for (uint8_t n = 0;n < FIR_FILTER_LENGTH; n++)
    {
        if (sumIndex > 0)
        {
            sumIndex--;
        } else
        {
            sumIndex = FIR_FILTER_LENGTH - 1;
        }

        out += FIR_IMPULSE_RESPONSE[n] * buf[sumIndex];
    }

    return out;
}

