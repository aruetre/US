function y=cuantizacionfast(x,b)
  %x es la senal
  %b bits a tener en cuenta
  n=2^p;%convierto los bits a decimal
  %realizo el redondeo en base a la señal entre el rango indicado en n
  y=round(x*(n-1))/(n-1);

 endfunction
