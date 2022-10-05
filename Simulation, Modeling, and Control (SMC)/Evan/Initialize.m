clear;
clear Plotting;
clear SensorModel;
clear drawTire;
clear Control;
clf;
global controlArray;
global controlIndex;
global dt;
global v;
global lap;
lap = 0;
dt = .1;
v = 1;
carLocation = [5 1]';
thetaC = deg2rad(0);
%thetaS = -pi/6;
X = [carLocation(1) carLocation(2) thetaC]';
U = [v, 0];
seed = rng('shuffle');

% [circ/line (0/1), Cx/W1x, Cy/W1y, R/W2x, CW(-1)CCW(1)/W2y, Nx(Halfplane), Ny,
% Px(Halfplane), Py]
controlArray = [1, 5, 1, 9, 1, 1, 0, 9, 1;
                0, 9, 3, 2, 1, 0, 1, 11, 3;
                1, 11, 3, 11, 10, 0, 1, 11, 10;
                0, 8, 10, 3, 1, 0, -1, 5, 10;
                0, 3, 10, 2, -1, -1, 0, 3, 8;
                0, 3, 6, 2, 1, 0, -1, 1, 6;
                1, 1, 6, 1, 2, 0, -1, 1, 2;
                0, 2, 2, 1, 1, 1, 0, 2, 1;
                1, 2, 1, 5, 1, 1, 0, 5, 1];
controlIndex = 1;