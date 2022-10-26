function drawTrack()
%DRAWTRACK Summary of this function goes here
%   Detailed explanation goes here

    x2 = [9.036, 5.695, 2.732, 0.021, 0.028, 1.409, 5.306, 9.387, 11.685,...
        9.294, 4.346, 3.906, 3.860, 4.630, 6.667, 7.216, 8.143, 10.728,...
        11.644, 11.580, 9.036];
    y2 = [0.381, 0.748, 0.445, 3.080, 9.958, 11.204, 11.229, 13.158,...
        10.265, 7.798, 7.534, 7.023, 5.483, 4.725, 4.366, 4.935, 6.928,...
        6.970, 5.581, 2.275, 0.381];
    set(fill(x2, y2, 'k'), 'facealpha', 0.5);

    x = [8.894, 5.665, 2.656, 1.480, 1.675, 3.769, 5.471, 9.284, 9.980,...
        9.183, 3.595, 2.358, 2.511, 4.542, 6.451, 8.331, 8.862, 9.599,...
        10.284, 10.141, 8.894];
    y = [1.732, 2.363, 1.961, 3.135, 8.425, 9.916, 9.591, 10.713, 9.900,...
        9.314, 8.988, 7.741, 3.485, 3.186, 2.840, 3.011, 4.809, 5.117,...
        4.714, 2.669, 1.732];
    fill(x, y, 'w');

    controlLine1 = [1 8.5; 1 3];
    controlLine2 = [11 3; 11 4.5]; 
    controlLine3 = [3 1; 9.5 1.5]; 
    controlLine4 = [7 3.5; 5.5 3.8]; 
    controlLine5 = [5.5 8.4; 9 8.5];
    controlLine6 = [8.25 11.3; 6 10.5];
    controlLine7 = [6 10.5; 3 10.5];
    
    plot(controlLine1(:,1), controlLine1(:,2), 'b');
    plot(controlLine2(:,1), controlLine2(:,2), 'b');
    plot(controlLine3(:,1), controlLine3(:,2), 'b');
    plot(controlLine4(:,1), controlLine4(:,2), 'b');
    plot(controlLine5(:,1), controlLine5(:,2), 'b');
    plot(controlLine6(:,1), controlLine6(:,2), 'b');
    plot(controlLine7(:,1), controlLine7(:,2), 'b');

    %code to draw arcs (not full circles)
    circr = @(radius,rad_ang)  [radius*cos(rad_ang);  radius*sin(rad_ang)];         % Circle Function For Angles In Radians
    circd = @(radius,deg_ang)  [radius*cosd(deg_ang);  radius*sind(deg_ang)];       % Circle Function For Angles In Degrees
    N = 25;                                                         % Number Of Points In Complete Circle
    r_angl = linspace(pi, 3*pi/2, N);                             % Angle Defining Arc Segment (radians)
    radius = 2;                                                   % Arc Radius
    center = [3, 3];
    xy_r = circr(radius,r_angl);                                    % Matrix (2xN) Of (x,y) Coordinates
    plot(xy_r(1,:) + center(1), xy_r(2,:) + center(2), 'b')                                % Draw An Arc Of Blue Stars
    
    r_angl = linspace(3*pi/2, 2*pi, N); 
    radius = 1.5;                                                   % Arc Radius
    center = [9.5, 3];
    xy_r = circr(radius,r_angl);                                    % Matrix (2xN) Of (x,y) Coordinates
    plot(xy_r(1,:) + center(1), xy_r(2,:) + center(2), 'b')                                % Draw An Arc Of Blue Stars

    r_angl = linspace(0, pi, N); 
    radius = 1.5;                                                   % Arc Radius
    center = [9.5, 4.5];
    xy_r = circr(radius,r_angl);                                    % Matrix (2xN) Of (x,y) Coordinates
    plot(xy_r(1,:) + center(1), xy_r(2,:) + center(2), 'b')

    r_angl = linspace(3*pi/2, 2*pi, N); 
    radius = 1;                                                   % Arc Radius
    center = [7, 4.5];
    xy_r = circr(radius,r_angl);                                    % Matrix (2xN) Of (x,y) Coordinates
    plot(xy_r(1,:) + center(1), xy_r(2,:) + center(2), 'b')

    r_angl = linspace(3*pi/2, pi/2, N); 
    radius = 2.3;                                                   % Arc Radius
    center = [5.5, 6.1];
    xy_r = circr(radius,r_angl);                                    % Matrix (2xN) Of (x,y) Coordinates
    plot(xy_r(1,:) + center(1), xy_r(2,:) + center(2), 'b')

    r_angl = linspace(2*pi/3, -pi/2, N); 
    radius = 1.5;                                                   % Arc Radius
    center = [9, 10];
    xy_r = circr(radius,r_angl);                                    % Matrix (2xN) Of (x,y) Coordinates
    plot(xy_r(1,:) + center(1), xy_r(2,:) + center(2), 'b')

    r_angl = linspace(pi/2, pi, N); 
    radius = 2;                                                   % Arc Radius
    center = [3, 8.5];
    xy_r = circr(radius,r_angl);                                    % Matrix (2xN) Of (x,y) Coordinates
    plot(xy_r(1,:) + center(1), xy_r(2,:) + center(2), 'b')

%    circ1X = 2*cos(linspace(-pi/2, 0)) + 9;
%    circ1Y = 2*sin(linspace(-pi/2, 0)) + 3;
%    circ2X = 3*cos(linspace(0, pi)) + 8;
%    circ2Y = 3*sin(linspace(0, pi)) + 10;
%    circ3X = 2*cos(linspace(0, -pi/2)) + 3;
%    circ3Y = 2*sin(linspace(0, -pi/2)) + 10;
%    circ4X = 2*cos(linspace(pi/2, pi)) + 3;
%    circ4Y = 2*sin(linspace(pi/2, pi)) + 6;
%    circ5X = 1*cos(linspace(-pi, -pi/2)) + 2;
%    circ5Y = 1*sin(linspace(-pi, -pi/2)) + 2;

%    plot([circ1X, circ2X, circ3X, circ4X, circ5X, circ1X], [circ1Y, circ2Y, circ3Y, circ4Y, circ5Y, circ1Y], 'blue');
end

