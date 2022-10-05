function U = controlLine(X_bar)
%CONTROLLINE Summary of this function goes here
%   Detailed explanation goes here
    global controlArray;
    global controlIndex;
    global dt;
    global v;
    persistent oldD;
    if(isempty(oldD))
        oldD = 0;
    end
    
    W1 = [controlArray(controlIndex, 2);controlArray(controlIndex, 3)]';
    W2 = [controlArray(controlIndex, 4);controlArray(controlIndex, 5)]';
    xdiff = W2(1) - W1(1);
    ydiff = W2(2) - W1(2);
    angle = atan2d(ydiff, xdiff);
    R = [cosd(angle) -sind(angle) W1(1); 
        sind(angle) cosd(angle) W1(2); 
        0, 0, 1];
    D = inv(R) *[X_bar(1:2);1];
    kp = -0.5;
    kd = -.3;
    deriv = (D(2)-oldD)/dt;
    
    thetaS = D(2) * kp + kd * deriv;
    U(1) = v;
    U(2) = thetaS;
    oldD = D(2);
end

