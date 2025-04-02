if(-r $HOME/.alias) then
    source $HOME/.alias
endif

########################### Synopsys ###############################
#Set Synopsys Directory
setenv Synopsys_Dir /opt/Synopsys
#SCL
setenv SCL_HOME $Synopsys_Dir/SCL_2018/scl/2018.06
setenv PATH $SCL_HOME/linux64/bin:$PATH

#SNPSLMD_LICENSE_FILE
setenv SNPSLMD_LICENSE_FILE 27050@dan

#VCS
setenv VCS_HOME $Synopsys_Dir/VCS2018/vcs/O-2018.09-SP2
setenv PATH $VCS_HOME/bin:$PATH
setenv NOVAS_HOME $Synopsys_Dir/Verdi2018/verdi/Verdi_O-2018.09-SP2

#Verdi
setenv Verdi_HOME $Synopsys_Dir/Verdi2018/verdi/Verdi_O-2018.09-SP2
setenv PATH $Verdi_HOME/bin:$PATH

########################### UESR ADD ###############################
##### color setup #####
#set red = "%{\033[1;31m%}"
#set red = "%{\e[1;31m%}" blod
set red = "%{\e[0;31m%}"
set green = "%{\e[0;32m%}"
set yellow = "%{\e[0;33m%}"
set blue = "%{\e[0;34m%}"
set magenta = "%{\e[0;35m%}"
set cyan = "%{\e[0;36m%}"
set light_red = "%{\e[0;91m%}"
set light_green = "%{\e[0;92m%}"
set light_yellow = "%{\e[0;93m%}"
set light_blue = "%{\e[0;94m%}"
set light_magenta = "%{\e[0;95m%}"
set light_cyan = "%{\e[0;96m%}"
set white = "%{\e[0;97m%}"

alias setprompt 'set prompt = "$light_magenta\[`whoami`\]$light_magenta@`hostname`: $white`pwd` >"'
#set prompt = "$light_magenta\[`whoami`\]$light_magenta@`hostname`: $white`pwd` >"
setprompt

alias cd 'chdir \!* ; ls && setprompt'

set autolist
set complete = igncase

 #####
 
#Alias
#lmstat -> check snpslmd weather enable
# open SCL
alias lmg " lmgrd -c /opt/Synopsys/SCL_2018/scl/2018.06/admin/license/license.dat -l /opt/Synopsys/SCL_2018/scl/2018.06/admin/logs/debug.log"
# close SCL
alias lmd " lmdown -c /opt/Synopsys/SCL_2018/scl/2018.06/admin/license/license.dat"
alias g 'gvim'
alias vimrc 'g /home/dan/.vimrc'
alias bashrc 'g /home/dan/.bashrc'
alias cshrc 'g /home/dan/.cshrc'
alias sc 'source /home/dan/.cshrc'
alias pdf 'evince'
alias p 'ps ux'
alias k9 'kill -9'
#alias cd 'cd \!* ; ls'
alias . 'cd ../'
alias .. 'cd ../../'
alias cp 'cp -rf'
alias rm 'rm -rf'
alias la 'll -a'
alias h 'history'
alias grep 'grep -n --color'
alias tree 'tree -A -C'
alias p3 'python3'
alias p 'python'
alias dve 'dve -full64 -cov -dir -covdir ./cov/cm.vdb &'
alias lt 'ls -t | head -n 5'
alias gt 'ls -t | head -n 1 | xargs gvim'

