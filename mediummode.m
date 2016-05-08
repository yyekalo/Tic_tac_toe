function mediummode(position)

if Data.gamebord(position)==0 && CheckForWin(Data.gamebord)==0
    
    set(gcbo,'String','X');
    Data.gameboard(position)=1;

end