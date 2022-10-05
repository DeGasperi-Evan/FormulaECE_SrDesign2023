% This script will load a car accelerating from 0 over the course of 10
% seconds
global lap;
Initialize();

X_bar = SensorModel(X, U);
while lap < 3
    clf;
    U = Control(X_bar);
    X = Dynamics(U, X);
    % everytime we set X we also have to set the sensor readings
    X_bar = SensorModel(X);
    % Plotting(X, X_bar, U, t);
    pause(dt);
end