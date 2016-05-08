data_GameBoard
ms=gcbf

for n=1:9
     h = findobj( ms, 'Tag', ['cell',num2str(n)]);
        set(h,'String','');
        
        
end