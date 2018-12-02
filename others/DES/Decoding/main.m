clc
clear
close all
%% define parameters

input = '..\Files\codeddata.mat';



%% read files

load (input);

%% STEPS

% start timming with tic
tic


% STEP 1: create coded data with RSA: input of RSA algorithm is input data
decoded_data = DES(coded_data,'DEC', key);

% end timming
toc



