
[DataRows,DataCols] = size(Data); 
ExpNum = DataCols/11; % Data for each experiment should be 11 columns
LastExp = DataCols / 11;

% Gets header data from file and saves to first row of GroupData Array
GetHeader;

DataCol = 1; % current column number
ExpCol = 1; % current column for each experiment, resets after reaching 11
DataRow = 2; % Row # in Data
ExpNum = 1; % Current Experiment Number

while ExpNum < LastExp + 1
    
    % Gets Experiment Meta Data
    GetExpLabel;
    
    % Returns TempPPR 2D array with a 10 X 6 array of PPRs from 1 experiment
    % Order of PPRs by column: 50,500,100,80,30,200
    GetSlopes; 
    
    % Imports TempPPR and averages each column
    % Returns a new 2D array PPROut with average PPR for each experiment 
    % Order of PPRs by column: 30,50, 80,100,200,500,100,80,30,200
    GetPPR;
    % Write Group Data Data to File
    %WriteGroup;
   
    DataCol = DataCol + 11;
    DataRow = 2;
    OutRow = 1;
    ExpCol = 5;
    ExpNum = ExpNum + 1;
end

% Average PPR + SEM for each PPRInterval
GetAvgPPR; %Final Data held in AnalyzedData

% GroupAnalysis to file
WriteGroup;

%Open the File
winopen (FileOutDir);

    