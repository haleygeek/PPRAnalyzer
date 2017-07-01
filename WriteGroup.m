% Write Final Data from GroupData to File


FileOutDir = get(handles.Group1Label,'string');
SummaryWorksheet = Group;
StatsWorksheet = 'Basic Stats';

%Writes out the averages for each experiment
xlswrite(FileOutDir,GroupData,SummaryWorksheet);

%Writes out the Stats  for the whole group
xlswrite(FileOutDir,StatsData,StatsWorksheet);

DoneMessage = strcat('Analysis complete. Data saved in ',FileOutDir)
set(handles.OutDirLabel,'string',DoneMessage);