clc
clear
close all
%% define parameters

output = '..\Files\codeddata.mat';


%% read files
input = input('file : ');
input = fopen(input,'r');
input = fscanf(input, '%c')

%% STEPS

% start timming with tic
tic

input = hexToBinaryVector(input , 64);

% STEP 1: create coded data with RSA: input of RSA algorithm is input data
[coded_data, key] = DES(input,'ENC');

% end timming
toc

%% write to disk

% Final: write it to a file for transfer

save(output, 'coded_data', 'key');


