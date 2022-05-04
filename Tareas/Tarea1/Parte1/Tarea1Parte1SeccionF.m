clc
clear
close all
%% Royer Mendez Ramirez, A43333, Grupo 01
%%Ejercicio1 Parte f)
%Curva Esperada del sistema No linealizado
figure
Xvs0=0.5;
Qe0=(0:0.001:0.1);
H0=(1/(rho*g))*(Qe0/(Kvs*Xvs)).^2;
plot(Qe0,H0,'-');