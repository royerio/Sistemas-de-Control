clc
clear
close all
%% Royer Mendez Ramirez, A43333, Grupo 01
%Ejercicio1 Parte e)
%Curva estatica Esperada del sistema Linealizado
figure(1)
A=3;
Kt=(1/3.3)*100;
g=9.81;
Kvs0=0.001;
rho=789;
Xvs0=0.5;
Qe0=(0:0.001:0.1);
Kvc=0.001;
K1=71.888;
K2=-10;
Kd=-139.132;
T=215.664;
H0=1/(rho*g)*(Qe0/(Kvs*Xvs0)).^2;
plot(Qeo,H0,'--');