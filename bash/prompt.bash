source $CONF_HOME/bash/term_colors.bash
PROMPT_COLOR=$G
if [ ${UID} -eq 0 ]; then
  PROMPT_COLOR=$R ### root
fi

# I like this prompt for a few reasons:
# (1) The time shows when each command was executed, when I get back to my terminal
# (2) Git information really important for git users
# (3) Prompt color is red if I'm root
# (4) The last part of the prompt can copy/paste directly into an SCP command
# (5) Color highlight out the current directory because it's important
# (6) The export PS1 is simple to understand!
# (7) If the prev command error codes, the prompt '>' turns red
export PS1="$Y\t$N $W"'$(__git_ps1 "(%s) ")'"$N$PROMPT_COLOR\u@\H$N:$C\w$N\n\["'$CURSOR_COLOR'"\]>$N "
# TODO: Find out why my $R and $N shortcuts don't work here!!!
export PROMPT_COMMAND='if [ $? -ne 0 ]; then CURSOR_COLOR=`echo -e "\033[0;31m"`; else CURSOR_COLOR=`echo -e "\033[0;32m"`; fi;'

# if [ -n "$TMUX" ]; then
#   export TERM="screen-256color"
# else
#   export TERM="xterm-256color"
# fi
