% Imports Data (2D array)
% Returns HeaderOut which contains the original header without Slope 1

% Get Header from original Data
CurDataCol = 1;
CurOutCol = 1;
while CurDataCol < 12
   if CurDataCol ~= 5;
        GroupData(1,CurOutCol) = Data(1,CurDataCol); %Writes header to GroupData array
   else      % Skips header in the 5th column (Slope 1)
       CurOutCol = CurOutCol-1;
   end
   CurDataCol = CurDataCol + 1;
   CurOutCol = CurOutCol + 1;
end


