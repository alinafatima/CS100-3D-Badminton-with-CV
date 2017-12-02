obj=videoinput('winvideo',1);
preview(obj);
%snapshot taken
red=getsnapshot(obj);
imshow(red);
%converted to binary image
img_size=size(red);
Binary_img=zeros(img_size(1:2));
r=red(:,:,1);
g=red(:,:,2);
b=red(:,:,3);
Binary_img(r>90 &  g<100 & b<100)=1;

Binary_img=bwareaopen(Binary_img,30);
imshow(Binary_img);
% centroid computed
cen=regionprops(Binary_img,'Centroid');
cenSize = size(cen);
% scaling done and coordinates returnes to main file
if cenSize(1) > 0
    coordinates=cen(1).Centroid;
    unitx=1280/1000;
    unity=720/500;
    coordinates(1)=550;
    coordinates(2)=((coordinates(2).*unity)./10).*10;
    else
    coordinates=[550 100];
end
