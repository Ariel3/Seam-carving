function energyImage = energy_image(im)
    grayImage = rgb2gray(im);
    [x, y] = gradient(im2double(grayImage));
    energyImage = sqrt(x.^2+y.^2);
    imshow(energyImage);
    