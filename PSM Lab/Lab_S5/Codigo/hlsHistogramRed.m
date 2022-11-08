function [histoH] = hlsHistogram(image)
[filas, cols, band] = size(image);

histoH = zeros(1,360);

for i=1:filas
  for j=1:cols
    r = double(image(i, j, 1))/255;
    g = double(image(i, j, 2))/255;
    b = double(image(i, j, 3))/255;
    [h l s] = rgb2hls(r, g, b);
    if (h > 0)
      H = floor(h);
      histoH(H+1) = histoH(H+1) +1;
    endif
  end
end

endfunction
