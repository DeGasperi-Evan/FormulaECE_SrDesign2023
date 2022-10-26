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
        integral = 0;
    end
    if(resetIntegral == 1)
        integral = 0;
    end

    x = X_bar(1);
    y = X_bar(2);
    thetaC = X_bar(3);
    lambda = controlArray(controlIndex, 5);
    Rcirc = controlArray(controlIndex, 4);
    C = [controlArray(controlIndex, 2); controlArray(controlIndex,3)];
    Rcar = norm(C - [x;y]);
    error = Rcar - Rcirc;

    kp = lambda * 0.4;
    kd = lambda * 0.5;
    ki = lambda * 0.0003;

    if(resetIntegral == 1)
        deriv = 0;
    else
        deriv = (error-oldD)/dt;
    end
    
    thetaS = error*kp + integral*ki + kd*deriv;
    U(1) = v;
    U(2) = thetaS;
    oldD = error;
    integral = integral + error*dt;
end

