function h = histogram(image)
h=zeros(1,256);
[filas, cols]= size(image);

for i=1:filas
  for j=1:cols
    pixel = image(i,j)+1;
    h(pixel) = h(pixel)+1;
  end
  
end

end

