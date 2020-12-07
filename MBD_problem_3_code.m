clearvars;
% close all
h2r = 2*pi;
tStop = 1;
Fs = 48000;
dt=1/Fs;
t = (0:dt:tStop)';
%%
sig1 = sin(500*t*h2r);
sig2 = sin(1000*t*h2r);
sig3 = sin(2000*t*h2r);
sig4 = sin(5000*t*h2r);
sig5 = sin(7500*t*h2r);
noise = sig1 + sig2+ sig3 + sig4 + sig5;
%%
sim('MBD_problem_3')
figure(1);
plot(t,noise)
figure(2);
plot(tout,yout);
