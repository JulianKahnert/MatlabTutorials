close all
clear
clc

vFreq = [440, 441];     % Beide Frequenzen für Schwebung
dur_sec= 3;             % Dauer des Signals
fs = 44100;             % Sampling Frequenz
vTime  = linspace(0, dur_sec, fs*dur_sec); % vector containing the time, starting at t=0

sinus = zeros(length(vTime), 2);
for n = 1:2
    sinus(:, n) = sin(2 * pi * vFreq(n) * vTime);
end

signal = [sinus(:,1) + sinus(:,2)];  % Mono: Überlagerung der Sinus Signale
signal = signal * 0.9;               % Normierung (auf 0.9) => kein Clipping
plot(vTime, signal)                  % grafische Darstellung der Schwebung
