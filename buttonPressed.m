ms=gcbf
m=get(gcbo,'Tag')
disp('disply current mode')
data=get(gcbf,'userdata')
m=data.mode

switch m
    case 'HumanMode'
       human_v_human
    case 'comp_easy'
       data.mode = 'comp_easy';
    case 'comp_medium'
       data.mode = 'comp_medium';
    case 'comp_expert'
        data.mode = 'comp_expert';
    otherwise
        disp('no string detected')
end
z=str2num(m(5))
easymode(z)

