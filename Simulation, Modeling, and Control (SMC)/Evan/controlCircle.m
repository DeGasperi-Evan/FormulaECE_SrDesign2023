function U = controlCircle(X_bar, resetIntegral)
%CONTROLCIRCLE Summary of this function goes here
%   Detailed explanation goes here
    global controlArray;
    global controlIndex;
    global dt;
    global v;
    persistent oldD;
    persistent integral;
    if(isempty(oldD))
        oldD = 0;
        integral = 1100;
    end
    if(resetIntegral == 1)
        integral = 0;
    end

    x = X_bar(1);
    y = X_bar(2);
    theta = X_bar(3);
    lambda = controlArray(controlIndex, 5);
    Rcirc = controlArray(controlIndex, 4);
    C = [controlArray(controlIndex, 2); controlArray(controlIndex,3)];
    Rcar = norm(C - [x;y]);
    error = Rcar - Rcirc;

    kp = lambda * 0.5;
    kd = lambda * 0.3;
    ki = lambda * 0.00005;
    deriv = (error-oldD)/dt;
    
    thetaS = error*kp + integral*ki + kd*deriv;
    U(1) = v;
    U(2) = thetaS;
    oldD = error;
    %integral = integral + error/dt;
end

