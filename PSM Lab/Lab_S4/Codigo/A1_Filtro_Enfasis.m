clear all
close all
clc

%filtro de enfasis  y [n]=x[n]−cx[n−1]

N=50;
n=0:N-1;
c=-0.97;
L=1;

a=[1 0 0];
b=zeros(1,L+1)

b(1)=1;
b(L+1)=c;


[h w]= freqz(b,a);
f=w/(2*pi);
plot(f,h)


