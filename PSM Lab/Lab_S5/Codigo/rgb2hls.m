function [h, l, s] = rgb2hls(r,g,b)

pixel = [r, g, b];
minval = min(pixel);
maxval = max(pixel);

l=(minval+maxval)/2;

if (minval == maxval)
  h=-100;
  s=0;
  return
endif


if (l <= 0.5)
  s = (maxval-minval)/(maxval+minval);
else
  s = (maxval - minval)/(2-maxval-minval);
endif

if (maxval == r)
    h= (g-b)/(maxval-minval);

elseif (maxval == g)
     h = 2 + (b-r)/(maxval-minval);
else
    h = 4+(r-g)/(maxval-minval);

endif

h = h *60;


if (h  < 0)
  h =h +360;
endif

end
