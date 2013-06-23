export CONF_HOME=$HOME/.conf
export PATH=/usr/texbin:/opt/local/bin:/opt/local/sbin:$PATH
export EDITOR='vim'
export LC_ALL=en_US.UTF-8
export LS_COLOR_ARG='-G'

if [ `which virtualenvwrapper.sh` ]; then
    source `which virtualenvwrapper.sh`
fi

alias matlabt="matlab -nodesktop -nosplash && source ~/.bash_profile"
alias mcurl='curl -sL -w "\nstatus code: %{http_code} | time: %{time_total} | type: %{content_type}\n"'
alias lpd='lp -o cpi=15 -o lpi=9' # print to default DYMO printer
alias sshtunnel='sudo ssh -qTfNnC -D 8080'
alias notify='growlnotify -n "note" -s -m'
alias tailf='tail -f'
alias tmux='tmux -2' # force working in 256 colors 
alias ta='tmux attach'

alias ls='ls $LS_COLOR_ARG'
alias l='ls'
alias ll='ls -l'
alias lla='ll -a'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
