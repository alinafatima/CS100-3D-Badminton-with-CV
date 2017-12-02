% if the shuttle crosses almost half the distance of the other court,
% then computer player comes into action
if shuttle_pos(2)>=700
    x_player2=shuttle_pos(1);
    y_player2=shuttle_pos(2);
    z_player2=shuttle_pos(3);
    % it gets the position of the shuttle at that instant and sets its
    % position accordingly
    set(rac_stick2,'xdata', x_rac2 + x_player2-5, 'ydata', y_rac2+...
        y_player2, 'zdata',z_rac2*100 + z_player2-100);
    set(rac_head2,'xdata', x_rachead2 + x_player2-5,'ydata',...
        z_rachead2.*10+ y_player2-5,'zdata',y_rachead1+25+ z_player2);
    
    % giving the new theta and position to the shuttle for the reverse
    % flight
    player2=[x_player2,y_player2,z_player2];
    theta=30;
    resultant_pos=shuttle_pos(3)./sind(theta);
end
