#pragma once
#include "SteeringDelegate.h"


class AlignToMovementSteering : public SteeringDelegate
{
public:
    AlignToMovementSteering(Character* _character);

public:


protected:
    float angularVelocityDesired;


private:


public:
    virtual SteeringOperations GetSteering() override;
    virtual void DrawDebug() override;


protected:


private:


protected:


};
