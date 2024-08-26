#
# Basic Commands
#

alias nv="nvim"
alias nm="nmtui"
alias ct="cointop"
alias cl="clear && colorscript -e "elfman""
alias q="exit"
alias pk="pkill -e"
alias hypr="Hyprland"

#
# Dotfiles (git) Commands
#

alias dot='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias dcom='dot commit -m'
alias damend='dot commit --amend'
alias dadd='dot add'
alias dstat='dot status'
alias dlog='dot log --pretty=format:"%h - %an , %ar : %s" --graph HEAD'

alias dpush='dot push -u origin main'
# alias dparm='dot push -u origin termux-xfce'

alias drh='dot reset HEAD'
alias dmv='dot mv'
alias dcout='dot checkout --'

alias drs='dot restore --staged'
alias dr='dot restore --'

alias dlsname='dot ls-files --name-only'
alias dlsdel='dot ls-files -d --name-only'
alias dlsmod='dot ls-files -m --name-only'
alias dlsignore='dot ls-files -i --name-only'
alias dlsstaged='dot ls-files -s --name-only'

alias dfiles='ls --group-directories-first --color=auto -Rd $(dot ls-tree -r $(dot branch | grep \* | cut -d " " -f2) --name-only)'
alias ddir='ls --group-directories-first --color=auto -d $(dot ls-tree -dr $(dot branch | grep \* | cut -d " " -f2) --name-only)'

#
# Startpage (git) Commands
#

alias start='/usr/bin/git --git-dir="$HOME/.startfiles/" --work-tree="$HOME/.config/startpage/"'
alias scom='start commit -m'
alias samend='start commit --amend'
alias sadd='start add'
alias sstat='start status'
alias slog='start log --pretty=format:"%h - %an , %ar : %s" --graph HEAD'

# alias spparm='start push -u origin termux-xfce'
alias spush='start push -u origin main'

alias srh='start reset HEAD'
alias smv='start mv'
alias scout='start checkout --'

alias srs='start restore --staged'
alias sr='start restore --'

alias slsname='start ls-files --name-only'
alias slsdel='start ls-files -d --name-only'
alias slsmod='start ls-files -m --name-only'
alias slsignore='start ls-files -i --name-only'
alias slsstaged='start ls-files -s --name-only'

alias sfiles='ls --group-directories-first --color=auto -Rd $(start ls-tree -r $(start branch | grep * | cut -d " " -f2) --name-only)'
alias sdir='ls --group-directories-first --color=auto -d $(start ls-tree -dr $(start branch | grep * | cut -d " " -f2) --name-only)'
