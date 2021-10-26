%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ProjectName : txt2rgb.m
% Author : Huhao
% Description : text to rgb
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all
clc

r_load = load('img_r.txt'); 
g_load = load('img_g.txt'); 
b_load = load('img_b.txt'); 

length = 512;%image length
width  = 512;%image width
 
r2 = reshape(r_load,[length, width]);
r2 = uint8(r2');
g2 = reshape(g_load,[length, width]);
g2 = uint8(g2');
b2 = reshape(b_load,[length, width]);
b2 = uint8(b2');

rgb_img(:,:,1)=r2;
rgb_img(:,:,2)=g2;
rgb_img(:,:,3)=b2;

figure,
subplot(221),imshow(r2),title('R');
subplot(222),imshow(g2),title('G');
subplot(223),imshow(b2),title('B');
subplot(224),imshow(rgb_img),title('RGB img');