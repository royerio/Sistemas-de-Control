clc
clear all
close all
%% Importar datos del modelo

filename = 'data_IdToolbox.xlsx';
headerlinesIn = 1;
A = importdata(filename,headerlinesIn);
t = (A.data(:, 1))
y = (A.data(:, 2))
u = (A.data(:, 3))
plot(t,y,t,u);
%%
%%Importar datos de la planta

filename = 'data_planta.xlsx';
headerlinesIn = 1;
A = importdata(filename,headerlinesIn);
T = (A.data(:, 1))
U = (A.data(:, 2))
Y = (A.data(:, 3))
plot(T,U,T,Y);