function y=cuantizacionbipolarfast(in,p)
  %in es la entrada
  %p es el numero de bitset
  n=2^p;
  x=(x+1)/2;%normalizamos la escala para poder aplicar el redondeo
  y=round(x*(n-1))/(n-1);
  y=(y*2)-1;% Invertimos para recuperar el intervalo -1 y 1
 endfunction
