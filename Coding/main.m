clc
clear
close all
%% define parameters

output = '..\Files\codeddata.mat';


%% read file
input = input('file : ');
input = fopen(input,'r');
input = fscanf(input, '%c')

%% STEPS

% start timming with tic
tic

% STEP 1: create abstract

abstract = HASH(input,'SHA1');

% STEP 2: create signature with RSA: input of RSA algorithm is abstract

[signature, ~] = RSA(abstract);

% STEP 3: create coded data with RSA: input of RSA algorithm is input data
[coded_data, ~] = RSA(input);


% STEP 4: concat codeddata with signature

coded_data_with_signature = [coded_data,signature];

% end timming
toc

%% write to disk

% Final: write it to a file for transfer

save(output, 'coded_data');


