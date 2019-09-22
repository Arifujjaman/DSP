clc;
clear all;
close all;

f1=1000;
f2=2000;
fs=8000;
N=8;
n=0:N-1;
x=sin(2*pi*(f1/fs)*n)+0.5*sin(2*pi*(f2/fs)*n+3*pi/4);
disp(x);

X=zeros(1,N);
r=zeros(1,N);
im=zeros(1,N);
y=zeros(1,N);
ph=zeros(1,N);
in=zeros(1,N);

for m=0:N-1
  for n=0:N-1
    r(m+1)=r(m+1)+x(n+1)*cos(2*pi*n*m/N);
    im(m+1)=im(m+1)+x(n+1)*sin(2*pi*n*m/N);
  endfor
  in(m+1)=in(m+1)=r(m+1)+im(m+1);
endfor



for m=0:N-1
  for n=0:N-1
    y(m+1)=y(m+1)+in(n+1)*exp(j*2*pi*n*m/N);
  endfor
  y(m+1)=(1/N)*y(m+1);
endfor
disp(y);