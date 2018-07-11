### Alias for Bash

> A bunch of useful alias for running git, directory, sass build etc

1. This will only work on a bash command line
2. Create a ```.bashrc``` file in the main project folder
3. Copy and paste the script below inside the ```.bashrc``` that you created at step 2
4. Open a bash command line and type ```source .bashrc```
5. If you done all the above correctly, you should be now able to use aliases in a bash shell

```bash
# Version: 1.0.1. Date: 25/06/2018. Email: fabio.paniconi@gmail.com

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
alias dev-log='git log --full-history --pretty=oneline --date-order --decorate=full --skip=0 --max-count=100 dev'

# Useful alias

alias list='ls -la'
alias gr='grunt'

# Move to home directory

alias h='cd'

# Move to desktop directory

alias dk='cd c:/Users/Fabio/Desktop'

# Move to c: disk

alias c='cd c:'

# Move to sd-unity directory

alias sd='cd c:/gitrepos/sd-unity-4-0'

# Moving up directories

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# typescript watch

alias tsw='tsc -w'

# Builds alias

alias amazon='grunt --skin=amazon-site-lite'
alias ketchum='grunt --skin=ketchum'


# Specificity for css alias, https://github.com/keeganstreet/specificity. npm install -g specificity. Example: specificity "ul#nav li.active a"

alias spec='specificity'

# Useful alias for misspelling git

alias got='git '
alias get='git '

#To enable bash tab auto-completion for grunt, add the following line to your ~/.bashrc file:

eval "$(grunt --completion=bash)"

# Load ssh

eval `ssh-agent`
eval `ssh-add`

# if [ ! -S ~/.ssh/ssh_auth_sock ]; then
# 	  eval `ssh-agent`
# 	    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
#     fi
#     export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
#     ssh-add -l > /dev/null || ssh-add

#Prompt and prompt colors
# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# 0 - Normal
# 1 - Bold
function prompt {
	  local BLACK="\[\033[0;30m\]"
	    local BLACKBOLD="\[\033[1;30m\]"
	      local RED="\[\033[0;31m\]"
	        local REDBOLD="\[\033[1;31m\]"
		  local GREEN="\[\033[0;32m\]"
		    local GREENBOLD="\[\033[1;32m\]"
		      local YELLOW="\[\033[0;33m\]"
		        local YELLOWBOLD="\[\033[1;33m\]"
			  local BLUE="\[\033[0;34m\]"
			    local BLUEBOLD="\[\033[1;34m\]"
			      local PURPLE="\[\033[0;35m\]"
			        local PURPLEBOLD="\[\033[1;35m\]"
				  local CYAN="\[\033[0;36m\]"
				    local CYANBOLD="\[\033[1;36m\]"
				      local WHITE="\[\033[0;37m\]"
				        local WHITEBOLD="\[\033[1;37m\]"
					export PS1="\n\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}$BLACKBOLD[\t]$PURPLEBOLD \u@\h\[\033[00m\]:$BLUEBOLD\w\[\033[00m\] \\$ "
				}

				prompt
```

