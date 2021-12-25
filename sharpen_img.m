norm_img = double(imread('./images/robin.jpg')) ./255;
grey_img = norm_img(:,:,1)*0.30 + norm_img(:,:,2)*0.59 + norm_img(:,:,3)*0.11;

gauss_blur = imgaussfilt(grey_img, 10);
alpha = grey_img - gauss_blur;
sharpened_img = grey_img + alpha;
imshow(sharpened_img);
