% three indexes signify three dimensions
shuttle_pos=[500 0 0];
shuttle_vel=[0 0 0];
shuttle_acc=[0 0 -5];

%-2 in shuttle_acc(3) is signifying gravity
%gravity has to be in z direction as my coordinate system is with z axis
% upwards and downwards
% y-axis is the forward back direction
% and the x axis is the right left direction according to the user.

ini_vel=55;
theta=45;
resultant_pos=0;
shuttle_vel(2)=ini_vel.*cosd(theta);
shuttle_vel(3)=ini_vel.*sind(theta);
