%Funcion de cuantizacion
function y= cuantizacion(in,p)
  %in es la entrada
  %p es el numero de bitset
  %Asignamos la entrada a una variable
  y=in;
  %Intervalo de cuantización
  r=(1/(2^p-1));
  %Calculo de umbrales
  th=r/2:r:1;
  %Matriz
  mt=[[0;th'] [th';1]]
  v=0:r:1
  %Cuantizacion
  for n=1:length(v)
    pos=find(in>=mt(n,1) & in<=mt(n,2));
    y(pos)=v(n);
  end
endfunction

