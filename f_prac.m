clear;

N=8;

F1=1000;

F2=2000;

Fs=8000;



n=0:N-1

Xn=sin(2*pi*(F1/Fs)*n)+.5*sin(2*pi*(F2/Fs)*n+((3*pi)/4));

Xn



a=zeros(8,1);

b=zeros(8,1);

X=zeros(8,1);

Y=zeros(8,1);
xy=zeros(8,1);

X_angle=zeros(8,1);

for m=0:N-1

  for n=0:N-1

    a(m+1)=a(m+1)+Xn(n+1)*cos(2*pi*(n)*(m)/N);

    b(m+1)=b(m+1)-Xn(n+1)*sin(2*pi*(n)*(m)/N);

  end
  xy(m+1)=a(m+1)+b(m+1);
  X(m+1)=sqrt(a(m+1)^2+b(m+1)^2);

  Y(m+1)=X(m+1)^2;

  X_angle(m+1)=atan(b(m+1)/a(m+1));

end

m=0:N-1;

disp(X);

subplot(3,1,1);

stem(m,X)

grid on;



ylabel('|X(m)|');



title('Amplitude Spectrum')



m=0:N-1;

disp(Y);

subplot(3,1,2);

stem(m,Y)

grid on;



ylabel('|Y(m)|');



title('Power Spectrum')



p=0:N-1;

disp(X_angle);

subplot(3,1,3);

stem(p,X_angle)

grid on;



ylabel('|X_angle(m)|');



title('Phase Spectrum')

A=zeros(8,1);
for k = 0:N-1
    for n = 0:N-1
        A(k+1) = A(k+1) + xy(n+1)*exp(j*2*pi*n*k/N);
    end
end
for j=0:N-1
  A(j+1)= (1/N)*A(j+1);
end;
disp(A);



