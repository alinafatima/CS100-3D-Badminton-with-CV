% shuttle
[shuttle,x_shuttle,z_shuttle,y_shuttle ] = makeshuttle();
% racquet
x_rac1=500;
y_rac1=0;
z_rac1=0;
x_rac2=500;
y_rac2=980;
z_rac2=0;
% player 1 racquet
% below are functions makeracquet1 and makeracquet2 that construct the
% racquet
racstickcolor=imread('racstick.jpg');
[rac_stick1,x_rac1, y_rac1, z_rac1,rac_head1,x_rachead1,z_rachead1,...
    y_rachead1] =makeracquet1 (x_rac1, y_rac1, z_rac1,racstickcolor);

% player 2 racquet
[rac_stick2,x_rac2, y_rac2, z_rac2,rac_head2,x_rachead2,z_rachead2,...
    y_rachead2] =makeracquet2 (x_rac2, y_rac2, z_rac2,racstickcolor);
