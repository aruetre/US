function m =m(h,i)
  u=0:i;
  m= sum(h(u+1)'.*u); %ponemos traspuesto para que estén ambos en fila
endfunction
