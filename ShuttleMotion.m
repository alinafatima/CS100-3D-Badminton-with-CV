%% z-axis motion

theta=theta-1; % the theta decreases while going up
resultant_vel=sqrt(sum(shuttle_vel(1:3).^2));
shuttle_vel(3)=resultant_vel.*sind(theta)+ shuttle_acc(3);
%taking the component of the resultant velocity to be executed in z-axis

%% y-axis motion
% the code below just the reverses the direction of the velocities
% so that  when player 1 hits, the shuttle moves forward and vice versa
if player ==2;
    if shuttle_vel(2)>=0
        shuttle_vel(2)=-(shuttle_vel(2));
    end
elseif player==1
    if shuttle_vel(2)<=0
        shuttle_vel(2)=-(shuttle_vel(2));
    end
end


%% positions
% computing the positions from velocities and then setting the shuttle on
% those positions
resultant_pos=resultant_pos+resultant_vel;
shuttle_pos(2)=shuttle_pos(2)+shuttle_vel(2);
shuttle_pos(3)=resultant_pos*sind(theta)+shuttle_vel(3);

set(shuttle,'XData',[x_shuttle+shuttle_pos(1)],'YData',[z_shuttle+shuttle_pos(2)],...
    'ZData',[y_shuttle+shuttle_pos(3)])
