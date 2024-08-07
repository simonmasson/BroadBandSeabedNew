function [header,output,type]=read_xml0(t_line)
% t_line
header=[];
output=[];
type='';

if length(t_line)==1
    return;
end

xstruct=xml2struct(t_line);
type_tmp=fields(xstruct);
type=type_tmp{1};
switch type
    case'Configuration'
        [header,output]=read_config_xstruct(xstruct);
    case 'Environment'
        output=read_env_xstruct(xstruct);
    case 'Parameter'
        output=read_params_xstruct(xstruct);
end


end