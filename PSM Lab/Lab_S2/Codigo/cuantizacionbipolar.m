%Funcion de cuantizacion
function y= cuantizacionbipolar(in,p)
  %in es la entrada
  %p es el numero de bitset
  %Asignamos la entrada a una variable
  y=in;
  %Intervalo de cuantización es a 2
  r=(2/(2^p-1));
  %Calculo de umbrales debe empezar en -1
  th=-1+r/2:r:1;
  %Matriz
  mt=[[-1;th'] [th';1]]
  v=-1:r:1;
  %Cuantizacion
  for n=1:length(v)
    pos=find(in>=mt(n,1) & in<=mt(n,2));
    y(pos)=v(n);
  end
endfunction

