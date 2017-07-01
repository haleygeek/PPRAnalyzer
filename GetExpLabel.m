
% Get the mouse number, Slice #, Group, and Filename (Row 1) from Data
        
GroupData(ExpNum + 1, 1) = Data(DataRow, DataCol); % Mouse #
GroupData(ExpNum + 1, 2) = Data(DataRow, (DataCol + 1)); % Slice #
GroupData(ExpNum + 1, 3) = Data(DataRow, (DataCol + 2)); % Group
GroupData(ExpNum + 1, 4) = Data(DataRow, (DataCol + 3)); % Filename