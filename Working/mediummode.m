function mediummode(position)

if Data.gamebord(position)==0 && CheckForWin(Data.gamebord)==0
    
    set(gcbo,'String','X','Enable','off');
    Data.gameboard(position)=1;

end


function result=isblock(gamboard)

DiagWin1 = GameBoard(1)+GameBoard(5)+GameBoard(9);
DiagWin2 = GameBoard(3)+GameBoard(5)+GameBoard(7);

if any(sum(GameBoard)==2)
    result=1;
    position=find(
elseif any(sum(GameBoard,2)==2)
    
elseif DiagWin1==2 
    result=1;
elseif DiagWin1==2 
    result=1;
else
    result=0;








end