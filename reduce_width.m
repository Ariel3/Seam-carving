function [reducedColorImage, reducedEnergyImage] = reduce_width(im, energyImage)
    map = Min_energy_mat(energyImage, 'VERTICAL');
    seam = Min_vertical_seam(map);
    
    [rowSize, colSize, z] = size(im);
    for i = 1:rowSize
        reducedColorImage(i,:,1) = im(i,[1:seam(i)-1,seam(i)+1:end], 1);
        reducedColorImage(i,:,2) = im(i,[1:seam(i)-1,seam(i)+1:end], 2); 
        reducedColorImage(i,:,3) = im(i,[1:seam(i)-1,seam(i)+1:end], 3);
    end
    reducedEnergyImage = energy_image(reducedColorImage);
