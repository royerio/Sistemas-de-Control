s = tf('s')
kp = 0.05;
p = kp*(exp(-2*s))*((3.79)/(s*(40*s+1)))
L = p/(1+p)
step(L)
