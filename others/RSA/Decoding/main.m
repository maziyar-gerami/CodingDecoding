clc
clear
close all
%% define parameters

input = '..\Files\codeddata.mat';
inData = '..\Files\out.mat';


%% read file

%input = fopen(input,'r');

load(inData);
load (input);
%% STEPS

% start timming with tic
tic

% STEP:

data = mod ((coded_data.^d) , n)-e


toc

%% write to disk

% Final: write it to a file for transfer

%fprintf(output, data);


