function esaymoode(position)

Data.gameboard
if Data.gameboard(position)==0 && CheckForWin(Data.gameboard)==0
    
    set(gcbo,'String','X');
    Data.gameboard(position)=1;
    
    %This makes sure the computer doesnt play after you win
    if 0==CheckForWin(Data.gameboard)
        
        position=getposition(Data.gameboard);
        Data.gameboard(position)=-1;
        
        %represent each cell where you can use to modify properties
        h = findobj( ms, 'Tag', ['cell',num2str(position)]);
        set(h,'String','O');
    end
end

end

