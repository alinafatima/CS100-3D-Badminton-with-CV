function [rac_stick1,x_rac1, y_rac1, z_rac1,rac_head1,x_rachead1,z_rachead1,y_rachead1] =...
    makeracquet1 (x_rac1, y_rac1, z_rac1,racstickcolor)
%This function constructs a racquet with the initial positions and
% texture, it also uses another function mycylinder created by myself

[rac_stick1, x_rac1, y_rac1, z_rac1]=mycylinder(x_rac1,y_rac1,z_rac1,100,...
    5,racstickcolor); % another function mycylinder

[x_rachead1, y_rachead1, z_rachead1]=cylinder(30);
rac_head1=surf(x_rachead1+500,z_rachead1.*10-5,y_rachead1+125,...
    racstickcolor,'edgecolor','none','Facecolor','texturemap');

end

