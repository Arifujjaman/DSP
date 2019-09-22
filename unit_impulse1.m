clc;
clear all;
close all;

n=10;
x=[zeros(1,5),ones(1,1),zeros(1,5)];
t=-n/2:n/2

stem(t,x);