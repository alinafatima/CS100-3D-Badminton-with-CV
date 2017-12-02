% making base ground
xblueplate=[0 1000 1000 0];
yblueplate=[0 0 1000 1000];
zblueplate=zeros(4,4);
baseground=imread('baseground.jpg');
Plate(xblueplate,yblueplate,zblueplate,baseground);
% a function that makes a surface by taking input arguments of dimensions
% in x,y and z axis and the texture

% a green plate as the baseground of the court
xgreenplate=[250 750 750 250];
ygreenplate=[0 0 1000 1000];
zgreenplate=zeros(4,4);
groundtexture=imread('groundtexture.jpg');
Plate(xgreenplate,ygreenplate,zgreenplate+2,groundtexture);

%side walls
[sidewalls,map,alpha]=imread('sidewalls.jpg');
Plate([0 1000 1000 0],[1000 1000 1000 1000],[0 0 500 500;0 0 500 500;0 0 500 500;...
    0 0 500 500],sidewalls);
Plate([0 0 0 0],[0 1000 1000 0]-5,[0 0 500 500;0 0 500 500;0 0 500 500;...
    0 0 500 500],sidewalls);
Plate([1000 1000 1000 1000],[0 1000 1000 0],[0 0 500 500;0 0 500 500;0 0 500 500;...
    0 0 500 500],sidewalls);

% white lines on the court

% for the user side of the court
% horizontal lines on the x-axis
plot3([250 750],[50 50],[0 0],'LineWidth',2,'color','w'); %first
plot3([250 750],[350 350],[0 0],'LineWidth',2,'color','w');%last
plot3([500 500],[0 350],[0 0],'LineWidth',2,'color','w'); %middle vertical line

% for the other side of the court
% horizontal lines on the x-axis
plot3([250 750],[650 650],[0 0],'LineWidth',2,'color','w'); %first from the net
plot3([250 750],[950 950],[0 0],'LineWidth',2,'color','w'); % last from the net
plot3([500 500],[650 1000],[0 0],'LineWidth',2,'color','w'); %middle vertical line

%vertical lines of the court
plot3([275 275],[0 1000],[0 0],'LineWidth',2,'color','w'); %first
plot3([725 725],[0 1000],[0 0],'LineWidth',2,'color','w'); %last

%boundarylines
plot3([250 750],[0 0],[0 0],'LineWidth',2,'color','w');
plot3([250 250],[0 1000],[0 0],'LineWidth',2,'color','w');
plot3([250 750],[1000 1000],[0 0],'LineWidth',2,'color','w');
plot3([750 750],[0 1000],[0 0],'LineWidth',2,'color','w');

% Net
% two poles
poles=imread('poles.jpg');
mycylinder(250,500,0,200,10,poles);
mycylinder(750,500,0,200,10,poles);
% a function that makes a cylinder by taking input arguments of positions
% in x,y and z axis and the height, radius and texture

%net
% just plotted lines vertically and horizontally
x=250:10:750;
z=100:10:200;
for n=1:11
    plot3([250 750],[500 500],[z(n) z(n)],'LineWidth',1,'color','k');
end
for n=1:50
    plot3([x(n) x(n)],[500 500],[100 200],'LineWidth',1,'color','k');
end

