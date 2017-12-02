if shuttle_pos(1)< 250 || shuttle_pos(1)>750 || shuttle_pos(2)<0 || shuttle_pos(1)>1000
   foul=1;
    title('FOUL!','fontsize',20);
 pause(2)
 if player==2
  score(2)=score(2)+1;
%% sevice
shuttle_pos(1)=500;
shuttle_pos(2)=800;
shuttle_pos(3)=50;

set(shuttle,'XData',[x_shuttle+shuttle_pos(1)],'YData',[z_shuttle+shuttle_pos(2)],...
     'ZData',[y_shuttle+shuttle_pos(3)])
   foul=0;
   theta=25;
resultant_pos=45;
shuttle_vel(3)=ini_vel.*sind(theta);
shuttle_vel(2)=ini_vel.*cosd(theta);
else
  score(1)=score(1)+1;
   shuttle_pos(1)=500;
shuttle_pos(2)=800;
shuttle_pos(3)=50;

   set(shuttle,'XData',[x_shuttle+shuttle_pos(1)],'YData',[z_shuttle+shuttle_pos(2)],...
     'ZData',[y_shuttle+shuttle_pos(3)])
   foul=0;
   theta=30;
  resultant_pos=45;
      shuttle_vel(3)=ini_vel.*sind(theta);
   shuttle_vel(2)=ini_vel.*cosd(theta);
   end

end