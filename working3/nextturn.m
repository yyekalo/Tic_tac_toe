function nextturn(turn)
% purpose this funciton will highlight the name of the player whos turn it
% is.
% Object: Tag
% Tag: name1,name2
% Propeties: backgroundcolor
% Callback: Turn, creatFcn
% Jesse Barnett 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% getting the user data and tag
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig1handle = findobj('tag','figure1');
% 
% data = get(fig1handle,'userdata');

 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% highlighting whos turn it is
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


if  turn==1   
    name1handle = findobj('tag','name1');
    name2handle = findobj('tag','name2');
    
    set(name1handle,'backgroundcolor',[0,1,0])
    set(name2handle,'backgroundcolor',[0.94,.94,.94])
    turn = ~turn; 
    
elseif turn==0    
    name1handle = findobj('tag','name1');
    name2handle = findobj('tag','name2');
    
    set(name1handle,'backgroundcolor',[0.94,.94,.94])
    set(name2handle,'backgroundcolor',[0,1,0])
    turn = ~turn; 
end
% set(gcbf,'userdata',data)
end

