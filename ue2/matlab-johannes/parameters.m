% Parameterfile for Simulink Model of heater
close all;
clear all;
clc;

% Environmental Temperature
t_env = 20.0;

% Delay (in seconds) of "transport delay" block (after output of heater)
delay = 30;

% Task 2.4, a
% -------------
% create PID controller
K_u = 0.315;
T_u = 117; %approximately

% Ziegler-Nichols parameter search
%K_P = K_u;
%K_I = 0;
%K_D = 0;

% parameters from Ziegler-Nichols method
K_P = 0.6*K_u;
K_I = 1.2*K_u/T_u;
K_D = 3*K_u*T_u/40;
