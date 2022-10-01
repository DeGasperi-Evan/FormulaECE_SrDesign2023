% This script will load a car accelerating from 0 over the course of 10
% seconds
Initialize();
scale = 1; %scale up car to see kinematics in motion
global dt;
X_bar = SensorModel(X, U);
for t = 0:dt:12
%while 1
    clf; %comment out for plotting 
    U = Control(X_bar);
    X = Dynamics(U, X);
    X_bar = SensorModel(X, U);
    %Plotting(X, X_bar, U, t);
    pause(dt);
end