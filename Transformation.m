image = imread("/MATLAB Drive/image/citations.jfif");

gamma_values = [0.5, 1.0, 2.0]; 
figure;

for i = 1:length(gamma_values)
    gamma_corrected = imadjust(image, [], [], gamma_values(i));
    subplot(1, length(gamma_values), i);
    imshow(gamma_corrected);
    title(['Gamma = ', num2str(gamma_values(i))]);
end
sgtitle('Gamma Correction Examples');
image = im2double(image); 
c = 1;
log_transformed = c * log(1 + image);

gamma = 2.0; 
gamma_corrected = log_transformed .^ gamma;

figure;

subplot(1, 3, 1);
imshow(image);
title('Original Image');

subplot(1, 3, 2);
imshow(log_transformed);
title('Logarithmic Transformation');

subplot(1, 3, 3);
imshow(gamma_corrected);
title(['Gamma Correction (\gamma = ', num2str(gamma), ')']);