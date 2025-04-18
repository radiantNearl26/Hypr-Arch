#
# ~/.zshrc
#

# Important: zsh Initialization
autoload -Uz compinit
precmd_functions=""
compinit

# Source custom configuration files
source $ZDOTDIR/custom/variables.zsh
source $ZDOTDIR/custom/completion.zsh
source $ZDOTDIR/custom/aliases.zsh
source $ZDOTDIR/custom/history.zsh
source $ZDOTDIR/custom/keybinds.zsh
source $ZDOTDIR/custom/theming.zsh

# Plugins
plugins=(alias-finder aliases archlinux history git npm zsh-autosuggestions zsh-syntax-highlighting sudo systemd)
zstyle ':omz:plugins:alias-finder' autoload yes
source $HOME/.config/zsh/ohmyzsh/oh-my-zsh.sh

# Export directories to $PATH
export PATH=$PATH:/home/Asmit/.spicetify
export PATH=$PATH:/home/.local/bin/

# Enable oh-my-posh prompt
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/peru.omp.json)"

# Help command
autoload -Uz run-help run-help-git run-help-ip run-help-openssl run-help-p4 run-help-sudo run-help-svk run-help-svn
(( ${+aliases[run-help]} )) && unalias run-help
alias help=run-help

# INIT Display for console:
cl
