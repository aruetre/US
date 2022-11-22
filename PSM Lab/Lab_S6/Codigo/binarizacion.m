%Función que crea una imagen binaria calculando el umbralo por el método de la varianza mínima.

%La función puede trabajar con uno o dos argumentos. El primero es el handle a la imagen a procesar. El segundo es el umbral que queramos usar.

function [out,T,iter] = binarizacion(in,umbral)

if nargin == 0
	error ('La función necesita al menos un argumento');
	return
end

[m,n,c]=size(in);
if c>1
	warning ('Imagen a color-> Usamos el plano G');
	imagen=in(:,:,2);
else
	imagen=in;
end

if nargin == 2
	%Estamos especificando un umbral que debemos usar en la binarización
	T=umbral;
	for i=1:m
		for j=1:n

			if imagen(i,j)>T
				out(i,j) = uint8(255);
			else
				out(i,j) = uint8(0) ;
			end
		end
	end
		
else
	%Aquí debemos calcular el umbral con el método de la varianza mínima.
	salir=0;
	iter = 0;
	T  = mean(mean(imagen))
	do
		out = binarizacion(imagen,T);
		pos = find(out==0);
		mu0 = mean(imagen(pos))
		pos = find(out==255);
		mu1 = mean(imagen(pos))
		Tn = uint8( (mu0+mu1)/2)
		if abs(Tn - T) > 1
			T=Tn;
		else
			salir=1;
		end
		iter = iter+1;
	until salir==1;


end


	


