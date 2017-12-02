function [] = Plate(x,y,z,texture)
%plate makes a base plate with input arguments as x,y,z and texture 
[X,Y]=meshgrid(x,y)
surf(X,Y,z,texture,'edgecolor','none','Facecolor','texturemap');
end


