ms=gcbf
m=get(gcbo,'Tag')
mode=data.mode
buttonnumber=str2num(m(5))

switch mode
    case 'HumanMode'
       human_v_human
    case 'comp_easy'
       easymode(buttonnumber)
    case 'comp_medium'
       mediumode(buttonnumber)
    case 'comp_expert'
        expertmode(buttonnumber)
    otherwise
        disp('no string detected')
end


