
%% Bode para los tres controladores

% Bode, modelo de Metodo Ziegler-Nichols

s = tf('s');
P1 = (exp(-2.10*s))*(3.810/(40*s+1))
C1 = 6.0*(1+1/(4.20*s)+((1.05*s)/(1+0.25*s)))
L1 = C1*P1

bode(L1)
margin(L1)
figure(1)

% Bode, modelo de Cohen & Coon

P3 = (exp(-2.10*s))*(3.810/(40*s+1))
C3 =  6.714*(1 + 1/(5.057*s)+ 0.756*s)
L3 = P3*C3

bode(L3)
margin(L3)
figure(2)


% Modelo Lopez 

P2 = (exp(-2.10*s))*(3.810/(40*s+1))
C2 =  5.68*(1 + (1/(5.011*s)) + ((0.67597*s)/(1+0.135*s)))
L2 = P2*C2

bode(L2)
margin(L2)
figure(3)

