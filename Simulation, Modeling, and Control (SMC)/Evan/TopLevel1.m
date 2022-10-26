% This script will load a car accelerating from 0 over the course of 10
% seconds
global lap;
global dt;
Initialize();
oldPos = PriorityQueue(1);
X_bar = SensorModel(X, U);
while lap < 3
    clf;
    X_bar = doPositionUncert(X_bar, oldPos);
    U_bar = Control(X_bar);
    [U, PWMtoSend] = motorModel(U_bar);
    X = Dynamics(U, X);
    X_bar = SensorModel(X, U);
    % Plotting(X, X_bar, U, t);
    pause(dt);
end