function home_dir = get_home_dir()

if ispc
    home_dir = winqueryreg('HKEY_CURRENT_USER',...
        ['Software\Microsoft\Windows\CurrentVersion\' ...
         'Explorer\Shell Folders'],'Personal');
else
    home_dir = char(java.lang.System.getProperty('user.home'));
end