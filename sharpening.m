% File: sharpening.m
% Desc: Proses sharpening citra 256 px grayscale via konvolusi
% Date: 1 April 2016
% Author: Eliza Riviera Rachmawati Jasin - 1103130144

% Load image RGB
img = imread('test.jpg'); 

% Ubah ke grayscale
img = rgb2gray(img);

% Konvolusi Robert d1
% Konvolusi Robert d2
% Konvolusi Robert gabungan d1&d2

% Konvolusi Prewitt d1
% Konvolusi Prewitt d2
% Konvolusi Prewitt gabungan d1&d2

% Konvolusi Sobel d1
% Konvolusi Sobel d2
% Konvolusi Sobel gabungan d1&d2

% Konvolusi Frei-chan d1
% Konvolusi Frei-chan d2
% Konvolusi Frei-chan gabungan d1&d2

% Tampilkan gambar
figure; imshow(img); title('Image asli');