function drawTrack()
%DRAWTRACK Summary of this function goes here
%   Detailed explanation goes here
    circ1X = 2*cos(linspace(-pi/2, 0)) + 9;
    circ1Y = 2*sin(linspace(-pi/2, 0)) + 3;
    circ2X = 3*cos(linspace(0, pi)) + 8;
    circ2Y = 3*sin(linspace(0, pi)) + 10;
    circ3X = 2*cos(linspace(0, -pi/2)) + 3;
    circ3Y = 2*sin(linspace(0, -pi/2)) + 10;
    circ4X = 2*cos(linspace(pi/2, pi)) + 3;
    circ4Y = 2*sin(linspace(pi/2, pi)) + 6;
    circ5X = 1*cos(linspace(-pi, -pi/2)) + 2;
    circ5Y = 1*sin(linspace(-pi, -pi/2)) + 2;

    plot([circ1X, circ2X, circ3X, circ4X, circ5X, circ1X], [circ1Y, circ2Y, circ3Y, circ4Y, circ5Y, circ1Y], 'blue');
end

