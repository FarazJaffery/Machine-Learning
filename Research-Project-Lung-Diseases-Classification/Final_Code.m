clear all
close all
clc

% Define the number of files to process
numfiles = 256;

% Initialize an empty matrix to store features
Features = [];

% Loop over each file
for i = 1:numfiles
    
    % Generate the filename for the current iteration
    filename = sprintf('Segmented Signals/s(%d).wav', i);
    
    % Read the audio file
    [x, fs] = audioread(filename);
    
    % Perform single-level discrete wavelet transform
    [cA1, cD1] = dwt(x, 'coif5');
    % [cA2,cD2] = dwt(cA1,'coif5');
    % [cA3,cD3] = dwt(cA2,'coif5');
   
    % Retain the approximation coefficients
    Rx = cA1;
    
    % Compute the Mel-frequency cepstral coefficients (MFCC)
    coeffs = mean(mfcc(Rx, fs));
    
    % Exclude the first coefficient and store the rest
    Feat = coeffs(2:end);
    
    % Append the features of the current file to the matrix
    Features = [Features; Feat];
    
    % display the current iteration number
    disp(i)
end

% Create labels for the dataset
labels = [ones(140, 1); 2 * ones(52, 1); 3 * ones(64, 1)];
% Combine the features and labels into one matrix
NFeatures = [Features labels];
