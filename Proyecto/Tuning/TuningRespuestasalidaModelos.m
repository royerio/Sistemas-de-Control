%% Modelo Ps + Controlador de Emmanuel con el metodo del Ziegler y Nichols del paper
t=[0:0.01:200];
s = tf('s');
P1 = (exp(-2.10*s))*(3.810/(40*s+1))
C1 = 6.0*(1+1/(4.20*s)+((1.05*s)/(1+0.25*s)))
L1 = C1*P1
Myr1 = L1/(1+L1);
Myd1 = P1/(1+L1); %Lazo cerrado para regulador
r1 = 0;
r1(t >= 10) = 5;
d1 = 0;
d1(t >= 70) = 2.5;
yr1 = lsim(Myr1, r1, t);
yd1 = lsim(Myd1, d1, t);
y1 = yr1 + yd1;
stepinfo(y1)



% Modelo Lopez (se aproximo nuestro mejor modelo a un modelo de POMTM por medio de half rule)

P2 = (exp(-2.10*s))*(3.810/(40*s+1))
C2 =  5.68*(1 + (1/(5.011*s)) + ((0.67597*s)/(1+0.135*s)))
L2 = P2*C2
Myr2 = L2/(1+L2);
Myd2 = P2/(1+L2); %Lazo cerrado para regulador
r2 = 0;
r2(t >= 10) = 5;
d2=0;
d2(t >= 70) = 2.5;
yr2 = lsim(Myr2, r2, t);
yd2 = lsim(Myd2, d2, t);
y2 = yr2 + yd2;
stepinfo(y2)


% Modelo de Cohen & Coon
t=[0:0.01:200];
s = tf('s');
P3 = (exp(-2.10*s))*(3.810/(40*s+1))
C3 =  6.714*(1 + 1/(5.057*s)+ 0.756*s)
L3 = P3*C3
Myr3 = L3/(1+L3);
Myd3 = P3/(1+L3); %Lazo cerrado para regulador
r3 = 0;
r3(t >= 10) = 5;
d3=0;
d3(t >= 70) = 2.5;
yr3 = lsim(Myr3, r3, t);
yd3 = lsim(Myd3, d3, t);
y3 = yr3 + yd3;
stepinfo(y3)



figure(1);
plot(t, y1, 'r', 'LineWidth',1.5)
hold on
plot(t,y2, 'b--', 'LineWidth',1.5)
plot(t,y3, 'k:', 'LineWidth',1.5)
plot(t,r1)
plot(t,d1)
grid ('on')
xlabel('Tiempo (minutos)');
ylabel('Magnitud  y_{(s)},r_{(s)},d_{(s)}  (%)');



