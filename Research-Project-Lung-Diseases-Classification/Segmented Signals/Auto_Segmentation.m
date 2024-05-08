clear all;
close all;
clc;

% Set the total number of divisions per audio
numdivision = 4;
% Initialize the name index for the augmented audio files
s = 1;

% Section to automatically augment the audios of the 'Healthy' class

numfiles = 35; % Set the initial number of files
n = 0; % Initialize the counter for divisions

for i = 1:numfiles
    % Construct the file path for the current audio file
    filename = sprintf('Put Your Audios Here/s(%d).wav', i);
    % Read the audio file
    [y, fs] = audioread(filename);

    % Divide the audio signal into the specified number of divisions
    x = buffer(y, round(length(y) / numdivision));

    % Write each division into a separate file
    for j = s:s + (numdivision - 1)
        % Construct the filename for the augmented audio
        filename = sprintf('S(%d).wav', j);
        n = n + 1;
        % Write the audio division to a file
        audiowrite(filename, x(:, n), fs);
        % Reset the counters after the last division
        if j == s + (numdivision - 1)
            s = s + numdivision;
            n = 0;
        end
    end
    % Display the current iteration number
    disp(i);
end

% Repeat the augmentation process for the 'Bronchiolitis' class

numfiles = numfiles + 13; % Update the total number of files
n = 0; % Reset the counter for divisions

for i = 36:numfiles
      % Construct the file path for the current audio file
    filename = sprintf('Put Your Audios Here/s(%d).wav', i);
    % Read the audio file
    [y, fs] = audioread(filename);

    % Divide the audio signal into the specified number of divisions
    x = buffer(y, round(length(y) / numdivision));

    % Write each division into a separate file
    for j = s:s + (numdivision - 1)
        % Construct the filename for the augmented audio
        filename = sprintf('s(%d).wav', j);
        n = n + 1;
        % Write the audio division to a file
        audiowrite(filename, x(:, n), fs);
        % Reset the counters after the last division
        if j == s + (numdivision - 1)
            s = s + numdivision;
            n = 0;
        end
    end
    % Display the current iteration number
    disp(i);
end

% Repeat the augmentation process for the 'Bronchiectasis' class

numfiles = numfiles + 16; % Update the total number of files
n = 0; % Reset the counter for divisions

for i = 49:numfiles
     % Construct the file path for the current audio file
    filename = sprintf('Put Your Audios Here/s(%d).wav', i);
    % Read the audio file
    [y, fs] = audioread(filename);

    % Divide the audio signal into the specified number of divisions
    x = buffer(y, round(length(y) / numdivision));

    % Write each division into a separate file
    for j = s:s + (numdivision - 1)
        % Construct the filename for the augmented audio
        filename = sprintf('s(%d).wav', j);
        n = n + 1;
        % Write the audio division to a file
        audiowrite(filename, x(:, n), fs);
        % Reset the counters after the last division
        if j == s + (numdivision - 1)
            s = s + numdivision;
            n = 0;
        end
    end
    % Display the current iteration number
    disp(i); 
end
