# Version: 1.0.0. Date: 14/06/2018. Email: fabio.paniconi@gmail.com

# Git alias
alias gs='git status '
alias ga='git add . '
alias gb='git branch '
alias gc='git commit -a -m '
alias pu='git pull '
alias ph='git push '
alias gd='git diff '
alias go='git checkout '
alias gk='gitk --all& '
alias gx='gitx --all '

# Useful alias for misspelling git

alias got='git '
alias get='git '

# Load ssh
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
	  eval `ssh-agent`
	    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
    fi
    export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
    ssh-add -l > /dev/null || ssh-add
