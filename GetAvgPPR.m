
% Average each column of PPROut to get average for 30,50,80,100,200,500 ms

% Extract PPR data by ISI
[PPRRows,PPRCols] = size(PPROut); 
MaxRow = PPRRows + 1;

Raw30 (PPRRows) = 0;
Raw50 (PPRRows) = 0;
Raw80 (PPRRows) = 0;
Raw100 (PPRRows) = 0;
Raw200 (PPRRows) = 0;
Raw500 (PPRRows) = 0;

CurRow = 1;
while CurRow < MaxRow 
    Raw30 (CurRow) = cell2mat(PPROut(CurRow,1));
    Raw50 (CurRow)= cell2mat(PPROut(CurRow,2));
    Raw80 (CurRow) = cell2mat(PPROut(CurRow,3));
    Raw100 (CurRow) = cell2mat(PPROut(CurRow,4));
    Raw200 (CurRow) = cell2mat(PPROut(CurRow,5));
    Raw500 (CurRow) = cell2mat(PPROut(CurRow,6));
    CurRow (CurRow) = CurRow + 1;
end

% Get average PPR for Each ISI
Mean30 = mean(Raw30);
Mean50 = mean(Raw50);
Mean80 = mean(Raw80);
Mean100 = mean(Raw100);
Mean200 = mean(Raw200);
Mean500 = mean(Raw500);
 
% Get standard deviation for Each ISI
Std30 = std(Raw30);
Std50 = std(Raw50);
Std80 = std(Raw80);
Std100 = std(Raw100);
Std200 = std(Raw200);
Std500 = std(Raw500);

% Get stadard error for Each ISI
N30 = length(Raw30);
N50 = length(Raw50);
N80 = length(Raw80);
N100 = length(Raw100);
N200 = length(Raw200);
N500 = length(Raw500);

% Get stadard error for Each ISI
Ste30 = Std30/sqrt(N30);
Ste50 = Std50/sqrt(N50);
Ste80 = Std80/sqrt(N80);
Ste100 = Std100/sqrt(N100);
Ste200 = Std200/sqrt(N200);
Ste500 = Std500/sqrt(N500);

% Write all results to AnalyzedData array
AnalyzedData = strings(7,5);

AnalyzedData(1, 1) = 'ISI';
AnalyzedData(2, 1) = '30ms';
AnalyzedData(3, 1) = '50ms';
AnalyzedData(4, 1) = '80ms';
AnalyzedData(5, 1) = '100ms';
AnalyzedData(6, 1) = '200ms';
AnalyzedData(7, 1) = '500ms';

AnalyzedData(1, 2) = 'Mean';
AnalyzedData(2, 2) = Mean30;
AnalyzedData(3, 2) = Mean50;
AnalyzedData(4, 2) = Mean80;
AnalyzedData(5, 2) = Mean100;
AnalyzedData(6, 2) = Mean200;
AnalyzedData(7, 2) = Mean500;

AnalyzedData(1, 3) = 'Ste';
AnalyzedData(2, 3) = Ste30;
AnalyzedData(3, 3) = Ste50;
AnalyzedData(4, 3) = Ste80;
AnalyzedData(5, 3) = Ste100;
AnalyzedData(6, 3) = Ste200;
AnalyzedData(7, 3) = Ste500;

AnalyzedData(1, 4) = 'Std';
AnalyzedData(2, 4) = Std30;
AnalyzedData(3, 4) = Std50;
AnalyzedData(4, 4) = Std80;
AnalyzedData(5, 4) = Std100;
AnalyzedData(6, 4) = Std200;
AnalyzedData(7, 4) = Std500;

AnalyzedData(1, 5) = 'N';
AnalyzedData(2, 5) = N30;
AnalyzedData(3, 5) = N50;
AnalyzedData(4, 5) = N80;
AnalyzedData(5, 5) = N100;
AnalyzedData(6, 5) = N200;
AnalyzedData(7, 5) = N500;

StatsData = cellstr (AnalyzedData);