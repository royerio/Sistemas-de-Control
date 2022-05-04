%Lazo abierto
s=tf('s');
kp = 0.05;
P = kp*(exp(-2*s))*((3.79)/(s*(40*s+1)))
L = P/(1+P)
step(L)
