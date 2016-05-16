ms=gcbf;
tag=get(gcbo,'Tag');
disp('disply current mode')
data=get(gcbf,'userdata');
m=data.mode;
z = str2num(tag(5));


switch m
    case 'HumanMode'
       human_v_human
       nextturn(data.turn) % calling next turn
    case 'comp_easy'
        easymode(z)
       data.mode = 'comp_easy';
    case 'comp_medium'
        mediummode(z)
       data.mode = 'comp_medium';
    case 'comp_expert'
        data.mode = 'comp_expert';
    otherwise
        disp('no string detected')
end


