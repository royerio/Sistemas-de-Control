
%% Royer Mendez Ramirez, A43333, Grupo 01
%% Ejercicio1 Parte D) Parametros del tanque
clc
clear
close all
figure
g=9.81;
Kvs=0.001;
rho=789;

%Curva estatica minima
Xvsmin=0.4;
Qmin=(0:0.001:0.1);
Hmin=(1/(rho*g))*(Qmin/(Kvs*Xvsmin)).^2;
plot(Qmin,Hmin,'-');
hold on
legend('Minimo')
title ('Curva de Caracteristica Estatica')
xlabel('Caudal de entrada = Qe ((m^3)/s)')
ylabel ('Nivel = H (m)')

%Curva estatica del valor esperado
legend('Esperado')
Xvsreq=0.5;
Qreq=(0:0.001:0.1);
Hreq=1/(rho*g)*(Qreq/(Kvs*Xvsreq)).^2;
plot(Qreq,Hreq,'--');

%Curva estatica maxima
legend('Maximo')
Xvsmax=0.6;
Qmax=(0:0.001:0.1);
Hmax=1/(rho*g)*(Qmax/(Kvs*Xvsmax)).^2;
plot(Qmax,Hmax,':');

%%
%Ejercicio1 Parte F)
figure
clc
clear
close all

A=3;
g=9.81;
Kvs=0.001;
rho=789;
Xvs0=0.5;
Qe=0.6955;
H0=2.5;
K1=71.888;
K2=-10;
Kvc=0.1;
Kt=0.303;
T=215.664;
U=100;
Uf=U*0.98;


%%
figure
sim('Tarea1Ejercicio1SeccionF');
plot(out.y0);
hold on
plot(out.y1);
%%

%Parte# 2

