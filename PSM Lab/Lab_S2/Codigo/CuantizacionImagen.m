%Preparamos el entorno
clear all
close all
clc

%Leemos la imagen
%imagen=imread('beach.jpg');
imagen=imread('hojas.jpg');
%Tamaño de la imagen
size(imagen)
%Filas 888 Columnas 1334

%Al tratarse de una imagen en escala de grises
%la matriz solo contiene numeros positivos enteros
%entre 0 y 255
%imagen
%   91   83   66   47   29   18   14   14
%   96   80   57   35   21   16   17   19
%   88   70   45   25   17   20   27   32
%   54   45   35   30   31   32   29   25

%Mostramos la imagen
%imshow(imagen)


%Para aplicar la cuantización debemos
%convertir los valoresd e la matriz de
%de la imagen que son enteros sin signos a doble
%ya que vamos a dividir en 255
%de esta forma hemos normalizado entre 0 y 1
imagenNormalizada=double(imagen)/255;

%cuantizamos a nivel de 1 bit
%obtendremos una imagen binaria
imagenCuantizada1bit=cuantizacion(imagenNormalizada,1);
imagenCuantizada2bit=cuantizacion(imagenNormalizada,2);
imagenCuantizada3bit=cuantizacion(imagenNormalizada,3);
%Para regenerar la imagen debemos volver
%a convertir los valores double a int
imagenCasting1bit=uint8(imagenCuantizada1bit*255);
imagenCasting2bit=uint8(imagenCuantizada2bit*255);
imagenCasting3bit=uint8(imagenCuantizada3bit*255);
%imshow(imagenCasting)



%Mostrar imagenes
%subplot(numerotablas,celdasTabla,posicion)
figure('name','Procesamiento de imagenes.','NumberTitle','off');
imshow(imagen);
title ("Imagen original");

figure('name','Procesamiento de imagenes.','NumberTitle','off');
imshow(imagenCasting1bit);
title ("Cuantización de imagen 1 bit 2 niveles");

figure('name','Procesamiento de imagenes.','NumberTitle','off');
imshow(imagenCasting2bit);
title ("Cuantización de imagen 2 bits 4 niveles");

figure('name','Procesamiento de imagenes.','NumberTitle','off');
imshow(imagenCasting3bit);
title ("Cuantización de imagen 3 bits 8 niveles");







