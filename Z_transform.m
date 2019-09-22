clc;
clear;
data =[1 3 5 7 9];
 l = length(data);
 z = sym('Z');
 ans = 0;
 for i = 0:l-1
     ans = ans+data(i+1)*z^(-i);
 end;

 disp(ans);