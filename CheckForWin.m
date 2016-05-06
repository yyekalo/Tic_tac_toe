% This function checks a tic-tac-toe board for a win. To do this it sums
% all of the columbs, rows, and diagnals to see how wins. If the sum is 
% equal to 3 Player1 wins. If sum equals -3 computer wins. The function
% returnes a true (1) or false (0). 
%
% Variabls
%   Player1
%   Player2



function y = CheckForWin(GameBoard)


% sums all rows to check so we can check for a win
WinningRow = GameBoard*[1;1;1];
% sums all columbs so we can check for winning columb
WinningCol = GameBoard'*[1;1;1];

DiagWin1 = GameBoard(1)+GameBoard(5)+GameBoard(9);
DiagWin2 = GameBoard(3)+GameBoard(5)+GameBoard(7);

% finding if someone wins!
if any(WinningRow' == [3,3,3])
    y=any(WinningRow' == [3,3,3]);
elseif any(WinningRow' == -[3,3,3])
    y=any(WinningRow' == -[3,3,3]);    
elseif any(WinningCol' == [3,3,3])
    y=any(WinningCol' == [3,3,3]);
elseif any(WinningCol' == -[3,3,3])
    y=any(WinningCol' == -[3,3,3]);
elseif DiagWin1 == 3 
    y=DiagWin1 == 3;
elseif DiagWin2 ==3
    y=DiagWin2 == 3;
elseif DiagWin1 == -3
    y=DiagWin1 == -3;
elseif DiagWin2 == -3
    y=DiagWin2 == -3;
else
    y=0;
end

end