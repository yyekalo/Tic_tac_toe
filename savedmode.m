
function savedmode
% Perpose: savemode is a function that sets the data structur mode to the 
%          selected user mode. it then opens up GU1 2 
% 
% Input:  N/A
% Output:  data.mode, string
% Jesse Barnett
% 5/13/2016
% 
% data = get(gcbf,'userdata');
% h =get(gcbo,'tag');
% 
% 
% switch m
%     case 'HumanMode'
%        
%     case 'comp_easy'
%        
%     case 'comp_medium'
%        
%     case 'comp_expert'
%         
%     otherwise
%         disp('no string detected')
% end
% 
% set(gcbf,'userdata',data);
% data.mode = selectedmode;
% data.mode
% set(gcbf,'userdata',data.mode) 
open('game_board.fig')
end