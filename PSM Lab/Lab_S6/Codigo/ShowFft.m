%
function  ShowFft (in,visual)

if nargin == 1
	visual=0;
end

if visual==0
	mag=abs(in);
else
	mag = log (1 + abs(double(in)));
end

mag=imRemap(mag);
%mag=imRealceEcualizacion(mag);
figure();
imshow(uint8(mag));

