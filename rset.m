data_GameBoard
ms=gcbf;

for n=1:9
     h = findobj( ms, 'Tag', ['cell',num2str(n)]);
        set(h,'String','','Enable','on');    
end
data =get(gcbf,'userdata');


data.gameboard= zeros(3,3);
set(gcbf,'userdata',data);
disp('reset button pressed')
data.gameboard