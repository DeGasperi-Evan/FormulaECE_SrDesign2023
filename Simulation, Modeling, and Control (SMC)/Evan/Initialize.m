clear;
clear Plotting;
clear SensorModel;
clear drawTire;
clear drawChassis;
clear drawCar;
clear Control;
clear controlCirle;
clear controlLine;
clear motorModel;
clear doPositionUncert;
clear SensorModel;
clf;
global controlArray;
global controlIndex;
global dt;
global v;
global lap;
global includeUncertainty;
global sigmaSteering;
global sigmaDrive;
global driveTable;
global steerTable;
global sigmaPos; 
global sigmaPosTime;
global muPosTime;

% Sample PWM Data
driveTable = [78 0.92; 80 1.56; 82 2.19; 84 2.61;];
steerTable = [60, 45; 62, 45; 64, 55; 66, 60;...
                68, 70; 70 75; 72 80; 74 90;...
                76 95; 78 105; 80 110; 82 115;...
                84 120; 86 125; 88 130;];

includeUncertainty = true;
sigmaSteering =deg2rad(15);
sigmaDrive = 0.2;
sigmaPos = .1;
sigmaPosTime = .1;
muPosTime = .7;
lap = 0;
dt = .1;
v = 1;
carLocation = [1 6]';
thetaC = deg2rad(-90);
%thetaS = -pi/6;
X = [carLocation(1) carLocation(2) thetaC]';
U = [v, 0];
seed = rng('shuffle');

% [circ/line (0/1), Cx/W1x, Cy/W1y, R/W2x, CW(-1)CCW(1)/W2y, Nx(Halfplane), Ny,
% Px(Halfplane), Py]
controlArray = [1, 1, 8.5, 1, 3, 0, -1, 1, 3; 
                0, 3, 3, 2, 1, 1, 0, 3, 1
                1, 3, 1, 9.5, 1.5, 1, 0, 9.5, 1.5
                0, 9.5, 3, 1.5, 1, 0, 1, 11, 3
                1, 11, 3, 11, 4.5, 0, 1, 11, 4.5
                0, 9.5, 4.5, 1.5, 1, 0, -1, 8, 4.5
                0, 7, 4.5, 1, -1, -1, 0, 7, 3.5
                1, 7, 3.5, 5.5, 3.5, -1, 0, 5.5, 3.5
                0, 5.5, 6.0, 2.5, -1, 1, 0, 5.5, 8.5
                1, 5.5, 8.5, 9, 8.5, 1, 0, 9, 8.5
                0, 9, 10, 1.5, 1, -1, 0, 8.25, 11.3
                1, 8.25, 11.3, 6, 10.5, -1, 0, 6, 10.5
                1, 6, 10.5, 3, 10.5, -1, 0, 3, 10.5
                0, 3, 8.5, 2, 1, 0, -1, 1, 8.5];
controlIndex = 1;