function U = Control(X_bar)
%CONTROL Summary of this function goes here
%   Detailed explanation goes here
    global controlArray;
    global controlIndex;
    global lap;
    if(controlArray(controlIndex, 1) == 0)
        U = controlCircle(X_bar, 0);
    else
        U = controlLine(X_bar);
    end
    if(checkHalfPlane(X_bar) > 0)
        if(controlIndex == size(controlArray, 1))
            controlIndex = 1;
            lap = lap + 1;
        else
            controlIndex = controlIndex + 1;
        end
    end
end

