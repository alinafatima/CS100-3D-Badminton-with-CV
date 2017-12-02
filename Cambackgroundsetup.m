% some initial variables important for the execution of the game
player=1;
player2=[0 0 0]; % the position of player 2
foul=0;
distance1=0; % distance of player 1 racquet to shuttle
mouseLoc=[0 0 0; 0 0 0];
score=[0 ,0];
text(200,1000,350,['SCORE: ' num2str(score(1)) ' - ' num2str(score(2))],...
    'backgroundcolor','k','color','r','fontweight','bold','fontsize',30)
% rotating the camera around the court
for az=270:5:360;
    view([az,10]);
    pause(0.00000000001)
end

for az=0:3:10;
    view([az,10]);
    pause(0.00000000001)
end
% setting the final position of the view and camera
view([15,6])
camzoom(2)
