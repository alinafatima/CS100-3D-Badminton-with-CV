function [h,x_rac,y_rac,z_rac] = mycylinder(posx,posy,posz,heightz,radius,texture)
%mycylinder 
[x,y,z]=cylinder(radius);
h=surf(x+posx,y+posy,(posz+z).*heightz,texture,'edgecolor','none','Facecolor','texturemap');
x_rac=x;
y_rac=y;
z_rac=z;
end

