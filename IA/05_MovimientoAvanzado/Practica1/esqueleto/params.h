#ifndef __PARAMS_H__
#define __PARAMS_H__

struct Params
{
    USVec2D targetPosition;
    float max_velocity;
    float max_acceleration;
    float dest_radius;
    float arrive_radius;

    float maxAngularVelocity;
    float maxAngularAcceleration;
    float angularArriveRadius;
    float angularDestRadius;
    float targetRotation;

    float look_ahead;
    float time_ahead;
};

bool ReadParams(const char* filename, Params& params);

#endif