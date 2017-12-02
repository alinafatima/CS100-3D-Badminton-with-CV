close all;
clear;
clc;
%The pictures of the texture were taken from Google Images and the sound 
%was also taken from the Internet. The idea of making a cone from the 
%cylinder command was taken from the Internet and was also used to make
%shuttle. This all was with permission of TA. 
%setting the GUI figure with a background image
gui_fig=figure('Position',[0 0 1500 1500],'Name','BADMINTON',...
    'menubar','none','numbertitle','off');
bckgrd=imread('BackGroundImage.jpg');
set(image(bckgrd,'XData',[0 100],'YData',[0 100]));
axis off;

% making the buttons
startbutton1=uicontrol('Style','PushButton','Position',[600 350 600 40],...
    'string',' START GAME WITH MOUSE CONTROL! ','fontsize',20,'fontweight',...
    'bold','callback','Badminton');
startbutton2=uicontrol('Style','PushButton','Position',[600 250 600 40],...
    'string',' START GAME WITH RED MARKER! ','fontsize',20,'fontweight',...
    'bold','callback','BadmintonWithComputerVision');

%setting the background sound
%sound blocks the rest of the code 
% [bck_sound,Fs]=audioread('backgroundsound.wma');
% sound(bck_sound,Fs);