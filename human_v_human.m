
function human_v_human
% Purpose this function uses tags from a GUI to display X and O on the 
%         game board
% 
% variables:
%        turn: scalar
%   postition: scalar
% tested 5/12/2016 and works
% Jesse Barnett 

data = get(gcbf,'userdata');
gameboard = data.gameboard;
 m = get(gcbo,'Tag'); % the tag is Celln
 
position = str2num(m(5)); % this is the index locatin in 3x3 matrix

data.player1.turn(position)=1;
turn = sum(data.player1.turn);
% toggeling between X and 0   
 if mod(turn,2) == 1
     data.gameboard(position)= 1; %3x3 matrix
     set(gcbo,'String','X');   
          
 elseif mod(turn,2) == 0
     data.gameboard(position) = -1;
     set(gcbo,'String','O');     
     
 end 

if CheckForWin(gameboard)==1
   disp('player X wins!')
 while CheckForWin(gameboard)==1
     
 end
elseif CheckForWin(gameboard)==-1
    disp('player 0 wins!')    
    
    
end
set(gcbf,'userdata',data); 

 
return
end
