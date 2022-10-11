function y=cuantizacionbipolarfast(x,b)
  %x es la senal
  %b bits a tener en cuenta
  n=2^b-1;
  %cambio de escala
  x=(x+1)/2;
  y=round(x*(n-1))/(n-1);
  %realizo el redondeo en base a la señal entre el rango indicado en n
  y=(y*2)-1;% Invertimos para recuperar el intervalo -1 y 1
 endfunction
