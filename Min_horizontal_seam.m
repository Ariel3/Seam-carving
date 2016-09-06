function horizontalSeam = Min_horizontal_seam(cumulativeEnergyMap)
    horizontalSeam = Min_vertical_seam(cumulativeEnergyMap');
    horizontalSeam = horizontalSeam';