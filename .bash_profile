alias manage.py='python manage.py'
alias activate='source /opt/cvg-project-twl/bin/activate'
alias twl='cd /Users/bopfermann/workspaces/twl/thewantlist && activate'
alias runtwl='twl && iterm_title twl && manage.py runserver '
alias runcelery='twl && iterm_title celery && manage.py celeryd -l DEBUG'
alias runsolr='twl && iterm_title solr && cd ../solr && java -jar start.jar'
alias runpg='postgres -D ~/pg_data'
alias runredis='iterm_title redis-server && redis-server'
alias runcassandra='iterm_title cassandra && cassandra'
alias runanalytics='twl && iterm_title analytics && cd ../merchant_portal && ./analytics.sh'
alias runpac='iterm_title "Pentaho Admin" && cd /usr/local/pentaho/latest/administration-console && ./start-pac.sh'
alias runpbi='iterm_title "Pentaho BI" && cd /usr/local/pentaho/latest/biserver-ce && ./start-pentaho.sh && cd -'
alias runmysql='/usr/local/mysql/support-files/mysql.server start'
alias stopmysql='/usr/local/mysql/support-files/mysql.server stop'
alias maketests="twl && cd ../media/js/test/coffeescript/src/ && coffee -c -o ../lib --watch ."
alias runspoon="cd /usr/local/pentaho/data-integration/latest && ./spoon.sh"

alias ll='ls -al'
alias dev='ssh twl-dev-app1.wanttt.com'


##
# Your previous /Users/bopfermann/.bash_profile file was backed up as /Users/bopfermann/.bash_profile.macports-saved_2011-07-04_at_16:16:06
##

# MacPorts Installer addition on 2011-07-04_at_16:16:06: adding an appropriate PATH variable for use with MacPorts.
export PATH=/Users/bopfermann/bin:/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

alias wget="curl -O"

# enables color in the terminal bash shell 
export CLICOLOR=1  
# sets up the color scheme for list
export LSCOLORS=gxfxcxdxbxegedabagacad  
# enables color for iTerm 
export TERM=xterm-color  
# Color Prompt 
#export PS1="\[\e[36;1m\]\u@\[\e[32;1m\]\w> \[\e[0m\]" 
export PS1="\e[1;34m\u\e[3;32m@\e[1;31mLOCAL\[\033[00m\]\n\e[0;34m\w\e[32;1m\] λ \[\e[0m\]" 

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh scp rsync

XCODE_PATH=`xcode-select -print-path`
if [ -d $XCODE_PATH ]; then
  export PATH=$XCODE_PATH/usr/bin:$PATH
  export PATH=$XCODE_PATH/Toolchains/XcodeDefault.xctoolchain/usr/bin:$PATH
fi

export PATH=${PATH}:~/adt-bundle-mac-x86_64-20130522/sdk/platform-tools:~/adt-bundle-mac-x86_64-20130522/sdk/tools
