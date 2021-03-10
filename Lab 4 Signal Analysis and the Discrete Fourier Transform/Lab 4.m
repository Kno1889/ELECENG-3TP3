% ELECENG 3TP3 Lab 4
% Khaled Hassan - 400203796

clc;
clear;

% Read in the signal from the audio file
% audioread used instead of wavread
[signal, Fs] = audioread('tones2020.wav'); 
L = length(signal); % signal length
T = 1/Fs; % period
t = [0:L-1]*T;

% Plot the signal for t_plot msec
t_plot = 5; % plot time is 5 msec
msec_per_sec = 1000;
numSamples = t_plot*Fs/msec_per_sec; 

plot(msec_per_sec*t(1:numSamples), signal(1:numSamples));
title('Khaled Hassan, 400203796: Plot of Input Signal');
xlabel('time (milliseconds)');
grid('minor');

% ELECENG 3TP3 Lab 4
% Khaled Hassan - 400203796

% Take the DFT
Y = fft(signal)/L;
f = Fs/2*linspace(0,1,L/2+1);

% Plot the single-sided magnitude spectrum.
plot(f,2*abs(Y(1:L/2+1)));

title('Khaled Hassan, 400203796: Single-Sided Magnitude Spectrum');
xlabel('Frequency (Hz)');
ylabel('|Y(f)|');
axis([0 Fs/2 0 .5]);
grid('minor');

7.  ‘Part1Q7.m’ 
% ELECENG 3TP3 Lab 4
% Khaled Hassan - 400203796

[signal, Fs] = audioread('tones2020.wav'); 

% Fs is equal to 16000, the sampling frequency
L = length(signal); % signal length
T = 1/Fs; % period
t = [0:L-1]*T;

% Plot the signal for t_plot msec
t_plot = 5; % plot time is 5 msec
msec_per_sec = 1000;
numSamples = t_plot*Fs/msec_per_sec; 

% form of sinusoids: A * sin(2pift)
x1 = 0.4 * sin(2 * pi * 2000 * t);
x2 = 0.2 * sin(2 * pi * 5000 * t);
x3 = 0.2 * sin(2 * pi * 6000 * t);

xT = x1 + x2 + x3; % form the compound sinusoid

plot(msec_per_sec*t(1:numSamples), xT(1:numSamples));
title('Khaled Hassan, 400203796: Recreated Plot of Audio Signal');
xlabel('time (milliseconds)');
grid('minor');

Part II
3. ‘Part2Q3.m’
% ELECENG 3TP3 Lab 4
% Khaled Hassan - 400203796

clc;
clear;

[signal, Fs] = audioread('SecretMessage2020.wav'); 
L = length(signal); % signal length
T = 1/Fs; % period
t = [0:L-1]*T;

Y = fft(signal) / L;
f = Fs/2*linspace(0,1,L/2+1);

plot(f,2*abs(Y(1:L/2+1)));
title('Khaled Hassan, 400203796: Single-Sided Magnitude Spectrum');
xlabel('Frequency (Hz)');
ylabel('|Y(f)|');
axis([0 Fs/2 0 .05]);
grid('minor');

4. ‘Part2Q4.m’
% ELECENG 3TP3 Lab 4
% Khaled Hassan - 400203796

[signal, Fs] = audioread('SecretMessage2020.wav'); 
L = length(signal) / 64; % signal interval length = 1024000 / 64
T = 1/Fs;
t = (0:L-1)*T;

% for the 1st character only
%Y = fft(signal(1: Fs)) / L;
%f = Fs/2*linspace(0,1,L/2+1);

% this works for all characters beyond the 1st one
% s is the second for which the dft is being applied 
% from s to s+1. This value was increased every time from 1 until 63
s = 61; %each s finds the (s+1)'th character
Y = fft(signal((s) * Fs: (s+1)*Fs))/L; 
f = Fs/2*linspace(0,1,L/2+1);

plot(f,2*abs(Y(1:L/2+1)));

title(sprintf('Khaled Hassan, 400203796: Character %d', s + 1));
%title('Khaled Hassan, 400203796: Character 1');
xlabel('Frequency (Hz)');
ylabel('|Y(f)|');
axis([0 Fs/2 0 .1]);
grid('minor');
