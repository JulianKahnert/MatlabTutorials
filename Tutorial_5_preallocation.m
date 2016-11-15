% TUT5_PREALLOCATION shows the time differnce between some possible
% calculations from the "Matlab Tutorials".

% Author: Julian Kahnert (c) IHA @ Jade Hochschule

close all
clear all
clc
iRuns = 1000000;

%% wrong: without preallocation
tic
x = 0;
for k = 2:iRuns
   x(k) = x(k-1) + 5;
end
toc

%% right: with preallocation
tic
x = zeros(1, iRuns);
for k = 2:iRuns
   x(k) = x(k-1) + 5;
end
toc

%% even better: no loop
tic
y = (0:iRuns-1) * 5;
toc
