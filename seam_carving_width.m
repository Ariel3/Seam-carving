im = imread('prague.jpg');

energy  = energy_image(im);
for i = 1:10
    [im, energy] = reduce_width(im, energy);
end
imshow(im)
imwrite(im, 'outputPrague.jpg');