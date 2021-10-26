%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ProjectName : rgb2txt.m
% Author : Huhao
% Description : rgb to text
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all
clc

img = imread('card.jpg');

r=img(:,:,1);
g=img(:,:,2);
b=img(:,:,3);

figure,
subplot(221),imshow(r),title('R');
subplot(222),imshow(g),title('G');
subplot(223),imshow(b),title('B');
subplot(224),imshow(img),title('RGB img');

r1=r';
g1=g';
b1=b';

fid1=fopen('img_r.txt','wt');
% fprintf(fid1,'%x\n',r1);%hexadecimal
fprintf(fid1,'%g\n',r1);%Binary
fclose(fid1); 

fid2=fopen('img_g.txt','wt');
% fprintf(fid2,'%x\n',g1);
fprintf(fid2,'%g\n',g1);
fclose(fid2); 

fid3=fopen('img_b.txt','wt');
% fprintf(fid3,'%x\n',b1);
fprintf(fid3,'%g\n',b1);  
fclose(fid3);  
  