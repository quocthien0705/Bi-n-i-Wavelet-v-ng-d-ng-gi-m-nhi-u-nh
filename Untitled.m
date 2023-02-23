[filename,pathname]=uigetfile({'*.jpg';'*.png';'*.jpeg';'*.*'},'Chon file anh');
tenvsduongdan = strcat(pathname,filename);
img = imread(tenvsduongdan);  

imgngau = imnoise(img,'gaussian',0,0.02);

% imgnspeckle = imnoise(img,'speckle',0.02);
% 
% imgnpoisson = imnoise(img,'poisson');
% 
% imgnsalt = imnoise(img,'salt & pepper',0.02);

%Image denoising
% imgdengaudb1=wdenoise2(double(imgngau),3,'Wavelet','db1','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]);
% imgdengaudb2=wdenoise2(double(imgngau),3,'Wavelet','db2','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]);
% imgdengaudb3=wdenoise2(double(imgngau),3,'Wavelet','db3','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]);
% imgdengaudb4=wdenoise2(double(imgngau),3,'Wavelet','db4','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]);
% imgdengaudb5=wdenoise2(double(imgngau),3,'Wavelet','db5','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]);
% imgdengau=wdenoise2(double(imgngau),3,'Wavelet','db6','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]); 

imgdengauhaar=wdenoise2(double(imgngau),3,'Wavelet','haar','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]); 
imgdengaudb=wdenoise2(double(imgngau),3,'Wavelet','db4','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]); 
imgdengausym4=wdenoise2(double(imgngau),3,'Wavelet','sym4','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]); 



% imgdenspeckle=wdenoise2(double(imgnspeckle),3,'Wavelet','db6','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]);
% 
% imgdenpoissonlv1=wdenoise2(double(imgnpoisson),1,'Wavelet','db6','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]);
% imgdenpoissonlv2=wdenoise2(double(imgnpoisson),2,'Wavelet','db6','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]);
% imgdenpoisson=wdenoise2(double(imgnpoisson),3,'Wavelet','db6','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]);
% imgdenpoissonlv4=wdenoise2(double(imgnpoisson),4,'Wavelet','db6','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]);
% imgdenpoissonlv5=wdenoise2(double(imgnpoisson),5,'Wavelet','db6','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]);
% 
% imgdensalt=wdenoise2(double(imgnsalt),3,'Wavelet','db6','NoiseEstimate','LevelDependent','DenoisingMethod','Bayes','ThresholdRule','Median','NoiseDirection',["h","v","d"]);

%Plotting

%//cac loai nhieu 
% subplot(331),imshow(img),title('Ảnh gốc')
% 
% subplot(332), imshow(imgngau), title('Ảnh nhiễu Gaussian')
% subplot(333), imshow(uint8(imgdengau)), title('Ảnh giảm nhiễu Gaussian')
% 
% 
% subplot(334), imshow(imgnspeckle), title('Ảnh nhiễu Speckle')
% subplot(337), imshow(uint8(imgdenspeckle)), title('Ảnh giảm nhiễu Speckle')
% 
% subplot(335), imshow(imgnpoisson), title('Ảnh nhiễu Poisson')
% subplot(338), imshow(uint8(imgdenpoisson)), title('Ảnh giảm nhiễu Poisson')
% 
% subplot(336), imshow(imgnsalt), title('Ảnh nhiễu Salt & Pepper')
% subplot(339), imshow(uint8(imgdensalt)), title('Ảnh giảm nhiễu Salt & Pepper')
%//

%//Cac loai ho wavelet
subplot(231),imshow(img),title('Ảnh gốc')

subplot(232), imshow(imgngau), title('Ảnh nhiễu Gaussian')
subplot(234), imshow(uint8(imgdengauhaar)), title('wavelet Haar')
subplot(235), imshow(uint8(imgdengaudb)), title('wavelet DB')
subplot(236), imshow(uint8(imgdengausym4)), title('wavelet Sym')



%//cac loai wavelet db
% subplot(331), imshow(img),title('Ảnh gốc')
% 
% subplot(332), imshow(imgngau), title('Ảnh nhiễu Gaussian')
% 
% subplot(333), imshow(uint8(imgdengaudb1)), title('Ảnh giảm nhiễu dùng db1')
% subplot(334), imshow(uint8(imgdengaudb2)), title('Ảnh giảm nhiễu dùng db2')
% subplot(335), imshow(uint8(imgdengaudb3)), title('Ảnh giảm nhiễu dùng db3')
% subplot(336), imshow(uint8(imgdengaudb4)), title('Ảnh giảm nhiễu dùng db4')
% subplot(337), imshow(uint8(imgdengaudb5)), title('Ảnh giảm nhiễu dùng db5')
% subplot(338), imshow(uint8(imgdengaudb2)), title('Ảnh giảm nhiễu dùng db6')
%//

%//cac muc phan tach
% subplot(331), imshow(img),title('Ảnh gốc')
% 
% subplot(332), imshow(imgnpoisson), title('Ảnh nhiễu Poisson')
% 
% subplot(333), imshow(uint8(imgdenpoissonlv1)), title('Ảnh giảm nhiễu level 1')
% subplot(334), imshow(uint8(imgdenpoissonlv2)), title('Ảnh giảm nhiễu level 2')
% subplot(335), imshow(uint8(imgdenpoisson)), title('Ảnh giảm nhiễu level 3')
% subplot(336), imshow(uint8(imgdenpoissonlv4)), title('Ảnh giảm nhiễu level 4')
% subplot(337), imshow(uint8(imgdenpoissonlv5)), title('Ảnh giảm nhiễu level 5')
%//

%FindingSNR

%//SNR cac loai nhieu
%Orig_vs_Noisy_SNRgau = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgngau(:))))

%Orig_vs_Noisy_SNRspeckle = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgnspeckle(:))))

%Orig_vs_Noisy_SNRpoisson = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgnpoisson(:))))

%Orig_vs_Noisy_SNRsalt = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgnsalt(:))))

% Orig_vs_Denoised_SNRsalt = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdensalt(:))))
% Orig_vs_Denoised_SNRpoisson = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdenpoisson(:))))
% Orig_vs_Denoised_SNRgau = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdengau(:))))
% Orig_vs_Denoised_SNRspeckle = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdenspeckle(:))))

%//SNR cac loai ho wavelet
Orig_vs_Denoised_SNRgauHaar = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdengauhaar(:))))
Orig_vs_Denoised_SNRgauDB = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdengaudb(:))))
Orig_vs_Denoised_SNRgausym4 = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdengausym4(:))))
%//SNR loai wavelet db
% Orig_vs_Denoised_SNRgaudb1 = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdengaudb1(:))))
% Orig_vs_Denoised_SNRgaudb2 = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdengaudb2(:))))
% Orig_vs_Denoised_SNRgaudb3 = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdengaudb3(:))))
% Orig_vs_Denoised_SNRgaudb4 = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdengaudb4(:))))
% Orig_vs_Denoised_SNRgaudb5 = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdengaudb5(:))))
% Orig_vs_Denoised_SNRgaudb6 = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdengau(:))))
%//

%//SNR cac muc phan tach
% Orig_vs_Denoised_SNRpoissonlv1 = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdenpoissonlv1(:))))
% Orig_vs_Denoised_SNRpoissonlv2 = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdenpoissonlv2(:))))
% Orig_vs_Denoised_SNRpoissonlv3 = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdenpoisson(:))))
% Orig_vs_Denoised_SNRpoissonlv4 = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdenpoissonlv4(:))))
% Orig_vs_Denoised_SNRpoissonlv5 = 20*log10(norm(double(img(:)))/norm(double(img(:))-double(imgdenpoissonlv5(:))))
%//

