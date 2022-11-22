%Crea un filtro bidimensional paso bajo o paso alto
%ideal = 1 -> ideal, 0-> Butterworth
%tipo = 0 ->pb, 1->pa
%D0 -> frecuencia de corte
%M, N -> dimesniones de la imagen

function h = filtro ( m,n, d0, tipo, ideal,orden)

if nargin <4
	tipo=0;
	ideal=0;
	orden=2;
end
if nargin <5
	ideal=0;
	orden=2;
end
if nargin <6
	orden=2;
end

h=zeros(m,n);
for i=1:m
	for j=1:n
		d= sqrt((i-m/2)^2 + (j-n/2)^2);
		switch(tipo)
		case 0	%Paso bajo 
			if ideal 
				if d<d0
					h(i,j)=1;
				else
					h(i,j)=0; 
				end
			else
				h(i,j) = 1/(1 +(d/d0 )^(2*orden)); 
			end
		case 1 %Paso alto
			if ideal
				if d>d0
					h(i,j)=1;
				else
					h(i,j)=0;
				end
			else
				if d==0
					h(i,j)=0;
				else
					h(i,j) = 1/(1 + (d0/d )^(2*orden));
				end 
			end
		endswitch
	end
end
	
