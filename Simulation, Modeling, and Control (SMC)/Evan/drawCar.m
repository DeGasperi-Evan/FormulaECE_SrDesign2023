function drawCar(carLocation, thetaC, thetaS, scale)
%drawCar, draw the whole car.
forwardCar = scale * .28;
rearCar = scale * .03;
carWidth = scale * .125;

rlTireOffset = [0, carWidth/2]';
rrTireOffset = [0, -carWidth/2]';
flTireOffset = [scale*.225, carWidth/2]';
frTireOffset = [scale*.225, -carWidth/2]';

drawTire(carLocation, rlTireOffset, scale*.05, scale*.03, thetaC, 0);
drawTire(carLocation, rrTireOffset, scale*.05, scale*.03, thetaC, 0);
drawTire(carLocation, flTireOffset, scale*.05, scale*.03, thetaC, thetaS);
drawTire(carLocation, frTireOffset, scale*.05, scale*.03, thetaC, thetaS);

drawChassis(carLocation, forwardCar, rearCar, carWidth, thetaC);

end