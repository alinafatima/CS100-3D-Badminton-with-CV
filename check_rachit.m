function [ player,theta,resultant_pos ] = check_rachit(shuttle_pos,...
    player2,distance1,player,theta,resultant_pos)
%will check if the racquet has hit the shuttle or not and will return the
%player which hit the shuttle
if shuttle_pos(1)==player2(1) && shuttle_pos(2)==player2(2) &&...
        shuttle_pos(3)==player2(3)
    
    player=2;
elseif  distance1<=100;
    player=1;
    theta=30;
    resultant_pos=shuttle_pos(3)./sind(theta);
end



end

