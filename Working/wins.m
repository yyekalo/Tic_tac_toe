function wins(winner)
%Perpose this function keeps track of the number of wins each player has.
%it updates the user data and ouputs the number of wins to a gui. 
%
% Tag: P1win,P2win
% Callback: place in side of savemode 
% Jesse Barnett

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% getting the user data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data = get(gcbf,'userdata');
MyTag = get(gcbo,'Tag');
data.player1.win= zeros(10,10);
data.player2.win= zeros(10,10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% finding if player1 or player2 has won
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if winner == 1
    win = data.player1.win; % this is the win matrix   
elseif winner == -1
    win = data.player2.win; % this is the win matrix
    data.player2.win = win;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% storing win in the win matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n = sum(win(:));
if n ==0
    idx = n+1;
    win(idx)=1;
else 
while win(n) ~= 0
    n = n+1; % then increment n by 1
    win(n)=1;    
end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% updating the data structure
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if winner == 1
     data.player1.win = win;
elseif winner == -1
     data.player2.win = win;
end
set(gcbf,'userdata',data)
% for debugging 
% disp(['this is player1 wins ',num2str(sum(data.player1.win(:)))])
% disp(['this is player2 wins ',num2str(sum(data.player2.win(:)))])

end