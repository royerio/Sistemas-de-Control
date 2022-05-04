%Codigo de la planta en matlab

s = tf('s')
P=(3.79*exp(-2*s))/(s*(40*s+1))
impulse(P)
systemIdentification