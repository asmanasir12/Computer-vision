% Diamond Shape Creation Script
% Author: Sabiha Shehzadi
% Description: This script generates a diamond shape in a binary matrix using the Manhattan distance. 
% It demonstrates how to create geometric shapes programmatically in MATLAB.

% Step 1: Initialize a 100x100 matrix of zeros
% The matrix serves as the canvas for the diamond shape.
A = zeros(100, 100);

% Step 2: Define the diamond's center coordinates
% cx and cy represent the x and y coordinates of the diamond's center, respectively.
cx = 50; % Center of the diamond in the x-direction
cy = 50; % Center of the diamond in the y-direction

% Step 3: Define the half-width of the diamond
half_width = 20; % The half-width determines the diamond's size

% Step 4: Generate the diamond using nested loops
% The nested loops iterate through each element of the matrix.
% The Manhattan distance formula is used to determine if a pixel is within the diamond.
for i = 1:100
    for j = 1:100
        % Calculate the Manhattan distance from the center to the current point
        if abs(cx - i) + abs(cy - j) <= half_width
            % Set the pixel value to white (255) if within the diamond
            A(i, j) = 255;
        end
    end
end

% Step 5: Display the resulting diamond
% The `imshow` function visualizes the matrix as an image.
imshow(A, []);
title('Diamond Shape Created in a Binary Matrix');
xlabel('X-axis');
ylabel('Y-axis');

% Additional Notes:
% - Adjust the matrix size (e.g., 100x100) for different resolutions.
% - Change `cx`, `cy`, and `half_width` to modify the diamond's position and size.
% - The Manhattan distance formula ensures the creation of a diamond shape.