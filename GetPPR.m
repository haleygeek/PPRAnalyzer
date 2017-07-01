 e = 1;
    sum30 = 0;
    sum50 = 0;
    sum80 = 0;
    sum100 = 0;
    sum200 = 0;
    sum500 = 0;

    while e < 11
        sum30 = sum30 + cell2mat(TempPPR (e,5)); 
        sum50 = sum50 + cell2mat(TempPPR (e,1));
        sum80 = sum80 + cell2mat(TempPPR (e,4));
        sum100 = sum100 + cell2mat(TempPPR (e,3));
        sum200 = sum200 + cell2mat(TempPPR (e,6));
        sum500 = sum500 + cell2mat(TempPPR (e,2));
        e = e + 1;
    end
    average30 = sum30/10;
    average50 = sum50/10;
    average80 = sum80/10;
    average100 = sum100/10;
    average200 = sum200/10;
    average500 = sum500/10;

    % PPROut holds the average PPR of each experiment in a group
    PPROut(ExpNum,1) = num2cell(average30);
    PPROut(ExpNum,2) = num2cell(average50);
    PPROut(ExpNum,3) = num2cell(average80);
    PPROut(ExpNum,4) = num2cell(average100);
    PPROut(ExpNum,5) = num2cell(average200);
    PPROut(ExpNum,6) = num2cell(average500);

