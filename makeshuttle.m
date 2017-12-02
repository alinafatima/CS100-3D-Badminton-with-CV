function [shuttle,x_shuttle,z_shuttle,y_shuttle ] = makeshuttle()
%make shuttle just makes a shuttle on the top of the net
[x_shuttle,y_shuttle,z_shuttle]=cylinder([15;1]); % taken the idea of [15;1]
% from the internet
z_shuttle=50.*z_shuttle;
shuttle=surf(x_shuttle+500,z_shuttle+500,y_shuttle+200,'facecolor',...
    'w','edgecolor','k','linewidth',0.5);

end

