%Function imConvolve
% Image(n, m)  imagen monocromatica
% Mask(n, m)  matriz con los valores de la mascara (tamaño imparximpar)
% R(n,m)    -  Imagen resultante
% El punto singular de la mascara es su centro


function R = imConvolve(imagen, mask)
% Convierte a tipos FLOAT
if nargin <2
    error('Numero de argumentos erroneos');
else
    if rem(size(mask,1),2) ==0 | rem(size(mask,2),2)==0
   	 error('Esta funcion solo admite mascaras con dimensiones impares');
    endif
endif

imagen = single(imagen); %transformamos a coma flotante
mask = single(mask); %transformamos a coma flotante

[filas, cols] = size(imagen);
[fmask, colmask] = size(mask);

%vemos el incremento que tenemos de hacer de 0 en el borde de la imagen
%Dividimos entre 2 el número de filas y el número de columnas, y nos quedamos con la parte entera del resultado
%por ejemplo, matrix 3x3 -> 3/2=1.5-> nos quedamos con 1.
incrf = fix(fmask/2);
incrc = fix(colmask/2);

%Practicamos zero-padding en los extremos-> creamos imagen nueva solo con 0 que tendrá el mismo número de filas +2* incremento (tendremos un aumento en ambos lados, izq y derecha, y arriba y abajo)
imagenN = zeros(filas+2*incrf,cols+2*incrc);
%ponemos la imagen em imagenN, quedando rodeada de 0
imagenN(incrf+(1:filas),incrc+(1:cols)) = imagen;


R = zeros(filas,cols);
%recorremos la matriz
for n=1:filas;
    for m=1:cols;
	%aplicamos cada elemento por el valor de la máscara ->.*
   	 value = imagenN(n:(n+fmask-1),m:(m+colmask-1)).*mask;
	%lo sumamos y le atribuimos ese valor al pixel n,m
   	 R(n,m)= sum(sum(value));
    endfor
endfor

endfunction
