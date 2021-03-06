% File: sharpening.m
% Desc: Proses sharpening citra 256 px grayscale via konvolusi
% Date: 1 April 2016
% Author: Eliza Riviera Rachmawati Jasin - 1103130144

% Load image RGB
img = imread('test.jpg'); 

% Ubah ke grayscale
img = rgb2gray(img);

% Ubah ke double
img = im2double(img);

% Konvolusi Robert d1
d1 = [-1,0,0; 0,1,0; 0,0,0;]
roberts_d1 = conv2(img,d1,'same');

% Konvolusi Robert d2
d2 = [0,0,-1; 0,1,0; 0,0,0;]
roberts_d2 = conv2(img,d2,'same');

% Konvolusi Robert gabungan d1 & d2
roberts_gab = roberts_d1 + roberts_d2;

% Konvolusi Prewitt gx
gx = [-1,0,1; -1,0,1; -1,0,1;]
prewitt_gx = conv2(img,gx,'same');

% Konvolusi Prewitt gy
gy = [-1,-1,-1; 0,0,0; 1,1,1;]
prewitt_gy = conv2(img,gy,'same');

% Konvolusi Prewitt gabungan gx & gy
prewitt_gab = prewitt_gx + prewitt_gy;

% Konvolusi Sobel gx
gx = [-1,0,1; -2,0,2; -1,0,1;]
sobel_gx = conv2(img,gx,'same');

% Konvolusi Sobel gy
gy = [-1,-2,-1; 0,0,0; 1,2,1;]
sobel_gy = conv2(img,gy,'same');

% Konvolusi Sobel gabungan gx & gy
sobel_gab = sobel_gx + sobel_gy;

% Konvolusi Frei-chan gx
gx = [-1,0,1; -2^(1/2),0,2^(1/2); -1,0,1;]
fc_gx = conv2(img,gx,'same');

% Konvolusi Frei-chan gy
gy = [-1,-2^(1/2),-1; 0,0,0; 1,2^(1/2),1;]
fc_gy = conv2(img,gy,'same');

% Konvolusi Frei-chan gabungan gx & gy
fc_gab = fc_gx + fc_gy;

% Konvolusi Prewitt2 N
pN = [-1,-1,-1; 1,-2,1; 1,1,1;]
p_N = conv2(img,pN,'same');

% Konvolusi Prewitt2 NW
pNW = [-1,-1,1; -1,-2,1; 1,1,1;]
p_NW = conv2(img,pNW,'same');

% Konvolusi Prewitt2 W
pW = [-1,1,1; -1,-2,1; -1,1,1;]
p_W = conv2(img,pW,'same');

% Konvolusi Prewitt2 SW
pSW = [1,1,1; -1,-2,1; -1,-1,1;]
p_SW = conv2(img,pSW,'same');

% Konvolusi Prewitt2 S
pS = [1,1,1; 1,-2,1; -1,-1,-1;]
p_S = conv2(img,pS,'same');

% Konvolusi Prewitt2 SE
pSE = [1,1,1; 1,-2,-1; 1,-1,-1;]
p_SE = conv2(img,pSE,'same');

% Konvolusi Prewitt2 E
pE = [1,1,-1; 1,-2,-1; 1,1,-1;]
p_E = conv2(img,pE,'same');

% Konvolusi Prewitt2 NE
pNE = [1,-1,-1; 1,-2,-1; 1,1,1;]
p_NE = conv2(img,pNE,'same');

% Tampilkan gambar
figure; imshow(img); title('Image asli');
figure; imshow(roberts_d1); title('Image Roberts d1');
figure; imshow(roberts_d2); title('Image Roberts d2');
figure; imshow(roberts_gab); title('Image Roberts Gabungan');
figure; imshow(prewitt_gx); title('Image Prewitt gx');
figure; imshow(prewitt_gy); title('Image Prewitt gy');
figure; imshow(prewitt_gab); title('Image Prewitt Gabungan');
figure; imshow(sobel_gx); title('Image Sobel gx');
figure; imshow(sobel_gy); title('Image Sobel gy');
figure; imshow(sobel_gab); title('Image Sobel Gabungan');
figure; imshow(fc_gx); title('Image Frei-chan gx');
figure; imshow(fc_gy); title('Image Frei-chan gy');
figure; imshow(fc_gab); title('Image Frei-chan Gabungan');