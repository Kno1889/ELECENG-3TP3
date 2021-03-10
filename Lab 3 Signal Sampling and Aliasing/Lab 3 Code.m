Aliasing in the Telephone System
1.	
%plot of a sampled sinusoid with frequency f = 100 Hz
f = 100;
% Sampling frequency and interval
fs = 8000;
Ts = 1/fs;

% Set time duration of plot, i.e., 10 msec.
tfinalplot = 10e-3;

% Make the time vector for the plot
nplot=0:Ts:tfinalplot;

% Sample the sinusoid.
xnT = sin(2*pi*f*nplot);

% Make the plot
stem(nplot, xnT);
%% plot(nplot, xnT);

%%print -djpg graph1.jpg

title("Khaled Hassan - 400203796");
axis([0 0.01 -1.1 1.1]);
ylabel("X(nTs)");
xlabel("t");

2.	
% Use sinusoid frequency f = 100, 200. 400. 800 Hz
f1= 100;
f2 = 200;
f4 = 400;
f8 = 800;

% Sampling frequency and interval
fs = 8000;
Ts = 1/fs;

% Set time duration of plot, i.e., 10 msec.
tfinalplot = 10e-3;

% Make the time vector for the plots
nplot=0:Ts:tfinalplot;

% Make the time vector for replayed sound spurt
% Play the spurt for 2 seconds
tfinal = 2;
nsound=0:Ts:tfinal;

% Sample the sinusoids
xnT1 = sin(2*pi*f1*nsound);
xnT2 = sin(2*pi*f2*nsound);
xnT4 = sin(2*pi*f4*nsound);
xnT8 = sin(2*pi*f8*nsound);

% Make the plot
subplot(4, 1, 1);
plot(nplot, xnT1(1:length(nplot)));
xlabel('t');
ylabel('f = 100 Hz');
title('Khaled Hassan – 400203796');

subplot(4, 1, 2);
plot(nplot, xnT2(1:length(nplot)));
xlabel('t');
ylabel('f = 200 Hz');

subplot(4, 1, 3);
plot(nplot, xnT4(1:length(nplot)));
xlabel('t');
ylabel('f = 400 Hz');

subplot(4, 1, 4);
plot(nplot, xnT8(1:length(nplot)));
xlabel('t');
ylabel('f = 800 Hz');

xnT = [xnT1 xnT2 xnT4 xnT8];

% Save xnT as a wav sound file, Q2soundfile.wav.
audiowrite('Q2soundwavefile.wav', xnT, fs);
'  '
3.	
% Use sinusoid frequency f = 7200, 7600. 7800. 7900 Hz
f1= 7200;
f2 = 7600;
f3 = 7800;
f4 = 7900;

% Sampling frequency and interval
fs = 8000;
Ts = 1/fs;

% Set time duration of plot, i.e., 10 msec.
tfinalplot = 10e-3;

% Make the time vector for the plots
nplot=0:Ts:tfinalplot;

% Make the time vector for replayed sound spurt
% Play the spurt for 2 seconds
tfinal = 2;
nsound=0:Ts:tfinal;

% Sample the sinusoids
xnT1 = sin(2*pi*f1*nsound);
xnT2 = sin(2*pi*f2*nsound);
xnT3 = sin(2*pi*f3*nsound);
xnT4 = sin(2*pi*f4*nsound);

% Make the plot
subplot(4, 1, 1);
plot(nplot, xnT1(1:length(nplot)));
xlabel('t');
ylabel('f = 7200 Hz');
title('Khaled Hassan – 400203796');

subplot(4, 1, 2);
plot(nplot, xnT2(1:length(nplot)));
xlabel('t');
ylabel('f = 7600 Hz');

subplot(4, 1, 3);
plot(nplot, xnT3(1:length(nplot)));
xlabel('t');
ylabel('f = 7800 Hz');

subplot(4, 1, 4);
plot(nplot, xnT4(1:length(nplot)));
xlabel('t');
ylabel('f = 7900 Hz');

xnT = [xnT1 xnT2 xnT3 xnT4];
% Save xnT as a wav sound file, Q3soundfile.wav.
audiowrite('Q3soundwavefile.wav', xnT, fs);

Aliasing of a Frequency Chirp Signal
1.	
%plot of a sampled sinusoid with frequency f = 100 Hz
f = 100;
u = 2000;
% Sampling frequency and interval
fs = 32000;
Ts = 1/fs;
nSamples = 2000;
perT = 8;

% Set time duration of plot, i.e., 10 msec.
% tfinalplot = 10e-3;

% Make the time vector for the plot
nplot=0:Ts:perT;

% Sample the sinusoid.
cnT = cos(pi * u * nplot .^ 2 + 2 * pi * f * nplot);

% Make the plot
plot(nplot(1:2000), cnT(1:2000));

title("Khaled Hassan - 400203796");
ylabel("C(t)");
xlabel("t");

% Save xnT as a wav sound file, Q1Bsoundfile.wav.
audiowrite('Q1Bsoundwavefile.wav', cnT, fs);


2.	
%plot of a sampled sinusoid with frequency f = 100 Hz
f = 100;
u = 2000;
% Sampling frequency and interval
%% fs = 16000;
fs = 8000;
Ts = 1/fs;
nSamples = 2000;
perT = 8;

% Set time duration of plot, i.e., 10 msec.
% tfinalplot = 10e-3;

% Make the time vector for the plot
nplot=0:Ts:perT;

% Sample the sinusoid.
cnT = cos(pi * u * nplot .^ 2 + 2 * pi * f * nplot);

% Make the plot
plot(nplot(1:2000), cnT(1:2000));

title("Khaled Hassan - 400203796");
%% ylabel("C(t) for Fs = 16KHz");
ylabel("C(t) for Fs = 8KHz");

xlabel("t");

%% Save xnT as a wav sound file, Q2Bsoundfile.wav.
%% audiowrite('Q2Bsoundwavefile.wav', cnT, fs);

% Save xnT as a wav sound file, Q2Csoundfile.wav.
audiowrite('Q2Csoundwavefile.wav', cnT, fs);


