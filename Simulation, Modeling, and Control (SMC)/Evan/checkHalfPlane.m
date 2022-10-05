function H = checkHalfPlane(X_bar)
%CHECKHALFPLANE Summary of this function goes here
%   Detailed explanation goes here
    global controlArray;
    global controlIndex;
    x = [X_bar(1);X_bar(2)];
    P = controlArray(controlIndex, 8:9)';
    N = controlArray(controlIndex, 6:7)';

    H = sign((x-P)'*N);
end

