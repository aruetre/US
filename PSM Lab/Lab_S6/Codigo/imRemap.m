function out = imRemap(image)
  maxval = max(max(image));
  minval = min(min(image));
  image = (image - minval)*255/(maxval-minval);
  out = uint8(image);
endfunction


