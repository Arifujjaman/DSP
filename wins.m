clc;
clear all;
close all;

N=input('put N');
n=0:N-1;

for i=1:N
  w(i)=1;
  w1(i)=0.5-0.5*cos(2*pi*(i-1)/N);
  w2(i)=0.54-0.46*cos(2*pi*(i-1)/N);
endfor

subplot(221);
plot(n,w);

subplot(222);
plot(n,w1);

subplot(223);
plot(n,w2);

for i=1:N/2+1
  w3(i)=(i-1)/(N/2)
endfor
if mod(N,2)==0
  for j=N/2+1:N-1
    i=i+1;
    w3(i)=2-i/(N/2);
  endfor
else
  for j=N/2+1:N
    i=i+1;
    w3(i)=2-i/(N/2);
  endfor
endif
subplot(224);
plot(n,w3);
