function [rac_stick2,x_rac2, y_rac2, z_rac2,rac_head2,x_rachead2,z_rachead2,y_rachead2] =...
    makeracquet2 (x_rac2, y_rac2, z_rac2,racstickcolor)
%This function constructs a racquet for player 2 with the initial positions and
% texture, it also uses another function mycylinder created by myself

[rac_stick2,x_rac2, y_rac2, z_rac2]=mycylinder(x_rac2,y_rac2,z_rac2,100,...
    5,racstickcolor); % another function mycylinder

[x_rachead2, y_rachead2, z_rachead2]=cylinder(30);
rac_head2=surf(x_rachead2+500,z_rachead2.*10-5+980,y_rachead2+125,...
    racstickcolor,'edgecolor','none','Facecolor','texturemap');

end
