%Royer Mendez Ramirez, A43333, grupo#1
%Seccion:1.1
%CONTROLADOR TIPO P
%kp=1(generica para este caso)

s=tf('s');
P=(1.3*(s+2))/((s+1+0.3i)*(s+1-0.3i))
sisotool(P)
%%
%Seccion:1.2
%CONTROLADOR TIPO PID ESTANDAR
%kp=1.538
%1/Td=-2
%1/Ti=0.54496
%1/Ti=0 (integrador)

s=tf('s');
P=(1.3*(s+2))/((s+1+0.3i)*(s+1-0.3i))
sisotool(P)
%%
%SECCION 2.1
%CONTROLADOR TIPO P
%kp=1(generica para este caso)

s=tf('s');
P=(1.3)/((s+0.548)*(s-0.548))
sisotool(P)
%%
%SECCION 2.1
%CONTROLADOR TIPO PD
%kp=3.308
%1/Td=0.465

s=tf('s');
P=(1.3)/((s+0.548)*(s-0.548))
sisotool(P)
%%
%SECCION 2.2
%CONTROLADOR TIPO PI
%kp=1 (generica para este caso)
%1/Td=0.548
%1/Ti=0 (integrador)

s=tf('s');
P=(1.3)/((s+0.548)*(s-0.548))
sisotool(P)
%%
%SECCION 2.2
%CONTROLADOR TIPO PID
%kp=3.077
%1/Td=1.570
%1/Ti=0.548
%1/Ti=0 (integrador)

s=tf('s');
P=(1.3)/((s+0.548)*(s-0.548))
sisotool(P)
