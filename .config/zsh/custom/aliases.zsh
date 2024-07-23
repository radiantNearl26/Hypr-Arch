#
# Basic Commands
#

alias nv="nvim"
alias nm="nmtui"
alias ct="cointop"
alias cl="clear && colorscript -e "elfman""
alias q="exit"
alias pk="pkill -e"

#
# Git Commands
#

alias dot='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias dcom='dot commit -m'
alias damend='dot commit --amend'
alias dadd='dot add'
alias dstat='dot status'
alias dlog='dot log --pretty=format:"%h - %an , %ar : %s" --graph HEAD'

# INFO: Push Commands:
alias dpush='dot push -u origin main'
# alias dparm='dot push -u origin termux-debian'
alias dp='dot push -u origin main'

alias drh='dot reset HEAD'
alias dmv='dot mv'
alias dcout='dot checkout --'

# INFO: Restore Commands:
alias drs='dot restore --staged'
alias dr='dot restore --'

# INFO: Show tracked files:
alias dlsname='dot ls-files --name-only'
alias dlsdel='dot ls-files -d --name-only'
alias dlsmod='dot ls-files -m --name-only'
alias dlsignore='dot ls-files -i --name-only'
alias dlsstaged='dot ls-files -s --name-only'

alias dfiles='ls --group-directories-first --color=auto -Rd $(dot ls-tree -r $(dot branch | grep \* | cut -d " " -f2) --name-only)'
alias ddir='ls --group-directories-first --color=auto -d $(dot ls-tree -dr $(dot branch | grep \* | cut -d " " -f2) --name-only)'
