clear all
t=[0:0.01:200];
s = tf('s');
P = (exp(-2.10*s))*(3.810/(40*s+1))
C =  6.714*(1 + 1/(5.057*s)+ 0.756*s)
L = P*C
Myr = L/(1+L);
Myd = P/(1+L); %Lazo cerrado para regulador
r = 0;
r(t >= 10) = 5;
d=0;
d(t >= 70) = 10;
yr = lsim(Myr, r, t);
yd = lsim(Myd, d, t);
y = yr + yd;
stepinfo(y)
figure(1);
title('respuesta del sistema');
xlabel('Tiempo (minutos)');
ylabel('y,r,d,(%)');
plot(t,y)
hold on;
plot(t,r)
plot(t,d)

