# Image-filteration
denoising experiments in MATLAB.

1)ADD NOISE
Inoisy = imnoise(I,'salt & pepper',d) % Impulse Noise

2)For impulse noise, ‘d’ is the proportion of affected pixels. Keep it to be 0.05, 0.1 and 0.2.

3)Now we have to denoise the noisy image using mean filtering and median filtering. we have to apply the appropriate filter depending on the type of noise for window size 3x3,5x5,7x7.

4)noise ratio (SSIM) between the original (clean) image and given denoised images.

**PSNR CODE IS ALSO ATTACHED**



