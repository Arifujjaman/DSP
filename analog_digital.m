clc;
clear all;
close all;
%x(t)=sin(2*pi*1000*t)
N=8;
F=1000;
Fs=8000;
for i=0:N-1
  x(i+1)=sin(2*pi*(F/Fs)*i);
endfor
t=0:N-1;
subplot(221);
stem(t,x);
xlebel('time');
ylebel('amplitude');

