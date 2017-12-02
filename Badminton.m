%% initialisations
badmintonfig=figure('Position',[0 0 1500 1500],'Name','BADMINTON',...
    'menubar','none','numbertitle','off');

hold on;
axis equal;
axis ([0 1000 0 1000 0 500]);
axis off

%%
BadmintonCourt

Equipment

ShuttleInitialisations

Cambackgroundsetup

racquet moving
set(gcf, 'WindowButtonMotionFcn','mouseLoc = get(gca, ''CurrentPoint'');');

while 1
    %% computer vision
    
    %% player1 racquet movement
    set(rac_stick1,'xdata',mouseLoc(1)+ x_rac1,'ydata',y_rac1+mouseLoc(1,2),'zdata',...
        z_rac1*100 + mouseLoc(1,3));
    set(rac_head1,'xdata',mouseLoc(1)+ x_rachead1,'ydata',z_rachead1.*10-5+mouseLoc(1,2),'zdata',...
        y_rachead1+125 + mouseLoc(1,3));
    
    %% shuttlecock's motion
    ShuttleMotion
    
    %% computer playing
    ComputerPlayer
    %% check to see if racquet hits the shuttle or not
    player1=[mouseLoc(1),mouseLoc(1,2),mouseLoc(1,3)]; %player1 ccordinates
    distance1=sqrt(((shuttle_pos(2)-player1(2))^2)+... %calculating distance between
        ((shuttle_pos(3)-player1(3))^2+150)); % player1 and shuttle
    % a function which see if the racquet hit the shuttle or not
    [player,theta,resultant_pos]=check_rachit(shuttle_pos,player2,...
        distance1,player,theta,resultant_pos);
    
    %% foul
    Foul
    
    %% scoring and display screen
    text(200,1000,350,['SCORE: ' num2str(score(1)) ' - ' num2str(score(2))],...
        'backgroundcolor','k','color','r','fontweight','bold','fontsize',30)
    if foul==0; %setting the title off when there is no foul
        title(['']);
    end
    
    %% winning condition
    WinningCondition
    pause(0.1);
end


