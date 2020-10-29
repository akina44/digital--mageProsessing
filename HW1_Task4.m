
close all
clear all
clc
pkg load image 

subplot(2,2,1)
img=imread('cat.jpg');
imshow(img)
title('RGB')

subplot(2,2,2)
grayscale=rgb2gray(img);
%grayscale=double(rgb2gray(img));
%imshow(uint8(grayscale));
imshow(grayscale)
title('Grayscale')

subplot(2,2,3)
binary=im2bw(grayscale)
imshow(binary)
title('Binary')

subplot(2,2,4)
imhist(grayscale);
title('Histogram')

print -djpeg grfk1