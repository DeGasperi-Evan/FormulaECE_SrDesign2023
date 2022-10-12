function X_bar = doPositionUncert(X_bar, pozyxInput)
%doPositionUncert put uncertainty on the position
global sigmaPos;
global sigmaPosTime;
global muPosTime;
global dt;

if(pozyxInput.size() > 1.9/dt)
    timeFromNow = normrnd(muPosTime, sigmaPosTime);
    queue = elements();
    index = int(timeFromNow/dt);
    X_old_pozyx = queue{index}(1:2);
    X_old_pozyx = X_old_pozyx + [normrnd(0, sigmaPos) normrnd(0, sigmaPos)];

    timeWeThink = muPosTime;
    indexUs = int(timeWeThink/dt);
    X_old = queue{indexUs}(1:2);
    updatePos = X_old_pozyx - X_old;
    X_bar = X_bar + updatePos;
end



end