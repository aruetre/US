clear all
close all
clc

%filtro de enfasis  y [n]−0.985 y [n−1]=x[n]−x[n−1]

N=50;
n=0:N-1;

a=[1 -0.985];
b=[1 -1]

[h w]= freqz(b,a);
f=w/(2*pi);
plot(f,h)
