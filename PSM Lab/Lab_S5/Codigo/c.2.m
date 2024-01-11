close all
clear all
clc

im=imread('infrarrojo.bmp'); %leemos la imagen
tam=size(im); %vemos el tamaño de la imagen (nº filas y n de col). Lo guardamos en una variable para usarlo después
%mostramos la imagen
subplot(121);
imshow(im);

%Antes de procesarla, hacemos un cast de la imagen -> formato double
im=double(im);

%vamos a definir la función de transferencia para cada canal RGB. Vamos a usar la curva de color del enunciado
desp=20; %desplazamiento
n=0:255; %rango de los valores de grises
r=255*abs(sin(2*pi*n/256)); %definimos la función sen, que equivale a la curva del enunciado
g=255*abs(sin(2*pi*(n+desp)/256)); %desplazamos la curva correspondiente al canal verde
b=255*abs(sin(2*pi*(n+2*desp)/256)); %desplazamos aún más la curva del canal azul

%creamos una imagen vacía de las dimensiones de la imagen que vamos a procesar. El último parametro (3) indica que queremos 3 matrices de esas dimensiones
imcolor=zeros(tam(1),tam(2),3);

%a cada canal le aplicamos la función que hemos definido
imcolor(:,:,1)=r(im+1);
imcolor(:,:,2)=g(im+1);
imcolor(:,:,3)=b(im+1);

%hacemos cast de nuevo a uint8 y mostramos la imagen
subplot(122);
imshow(uint8(imcolor));

