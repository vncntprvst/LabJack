function LJSdata=readLJStreamData(fileName,labels)
%% Import data from LJStream dat file.

%% Initialize variables.
% fileName = 'D:\Data\test\TC_Wheel_TTL_0.dat';
delimiter = '\t';
startRow = 4;
formatSpec = '%f%f%f%f%f%f%f%f%f%[^\n\r]';

%% Open the text file.
fileID = fopen(fileName,'r');

%% Read columns of data according to the format.
textscan(fileID, '%[^\n\r]', startRow-1, 'WhiteSpace', '', 'ReturnOnError', false, 'EndOfLine', '\r\n');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'TextType', 'string', 'EmptyValue', NaN, 'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Create output variable
LJSdata = table(dataArray{1:end-1}, 'VariableNames', labels);
