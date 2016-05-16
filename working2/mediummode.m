function mediummode(p)

data = get(gcbf,'Userdata');
data.gameboard
if isblock(data.gameboard)
else
    h = findobj( gcbf, 'Tag', ['cell',num2str(getposition(data.gameboard))]);
    set(h,'String','O','Enable','off');
end
end

function result=isblock(GameBoard)

DiagWin1 = GameBoard(1)+GameBoard(5)+GameBoard(9);
DiagWin2 = GameBoard(3)+GameBoard(5)+GameBoard(7);

if any(sum(GameBoard)==2)
    result=1;
    columin=find(sum(GameBoard)==2);
    row=find(~GameBoard(:,columin));
    computerposition=(columin-1)*3+row;
elseif any(sum(GameBoard,2)==2)
    result=1;
    row=find(sum(GameBoard,2)==2);
    columin=find(~GameBoard(:,row));
    computerposition=(columin-1)*3+row;
elseif DiagWin1==2 
    if GameBoard(1)==0
        position=1;
    elseif GameBoard(5)==0
        position=5
    elseif GameBoard(9)==0
        position=9
    end
    
    result=1;
elseif DiagWin1==2 
    if GameBoard(7)==0
        position=1;
    elseif GameBoard(5)==0
        position=5;
    elseif GameBoard(3)==0
        position=9;
    end
    result=1;
else
   result=0;
end
 h = findobj( gcbf, 'Tag', ['cell',num2str(computerposition)]);
 set(h,'String','O','Enable','off');
disp(num2str(computerposition))
end