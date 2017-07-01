% Get one experiment

OutRow = 1; % current row in Output array
TraceNum = 1; % repetition number for traces


% Get average data for one experiment
% Returns TempPPR 2D array with a 10 X 6 array of PPRs
% (50,500,100,80,30,200)

 while DataRow < (62)
    if TraceNum == 7
        TraceNum = 1;
        ExpCol = 1;
        OutRow = OutRow + 1;
    end
    Slope1 = cell2mat(Data(DataRow, (DataCol + 4)));
    Slope30 = cell2mat(Data(DataRow, (DataCol + 5)));
    Slope50 = cell2mat(Data(DataRow, (DataCol + 6)));
    Slope80 = cell2mat(Data(DataRow, (DataCol + 7)));
    Slope100 = cell2mat(Data(DataRow, (DataCol + 8)));
    Slope200 = cell2mat(Data(DataRow, (DataCol + 9)));
    Slope500 = cell2mat(Data(DataRow, (DataCol + 10)));
        
    % Calculate PPR and add to output array
    switch TraceNum
        case 1  
            ppr50 = Slope50/Slope1; 
            TempPPR(OutRow, (TraceNum)) = num2cell(ppr50); 
        case 2
            ppr500 = Slope500/Slope1;
            TempPPR(OutRow, (TraceNum)) = num2cell(ppr500);
        case 3
            ppr100 = Slope100/Slope1;
            TempPPR(OutRow, (TraceNum)) = num2cell(ppr100);
        case 4
            ppr80 = Slope80/Slope1;
            TempPPR(OutRow, (TraceNum)) = num2cell(ppr80);
        case 5
            ppr30 = Slope30/Slope1;
            TempPPR(OutRow, (TraceNum)) = num2cell(ppr30); 
        case 6
            ppr200 = Slope200/Slope1;
            TempPPR(OutRow, (TraceNum)) = num2cell(ppr200);
    end
        
    DataRow = DataRow + 1;
    TraceNum = TraceNum + 1;
 end

% Write all results to GroupData array
[PPRRows, PPRCols] = size (TempPPR);
GroupData(ExpNum + 1, 5) = TempPPR (1, 1);
GroupData(ExpNum + 1, 6) = TempPPR (1, 2);
GroupData(ExpNum + 1, 7) = TempPPR (1, 3);
GroupData(ExpNum + 1, 8) = TempPPR (1, 4);
GroupData(ExpNum + 1, 9) = TempPPR (1, 5);
GroupData(ExpNum + 1, 10) = TempPPR (1, 6);

