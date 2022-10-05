function drawCircle(C, R)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
i = 0:20;
P = C + [cos(2*pi/20*i)*R; sin(2*pi/20*i)*R];
plot(P(1,:), P(2,:), 'r--');
end

