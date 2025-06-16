# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Theme setup using pywall
alias ls='ls --color=auto'
alias grep='grep --color=auto'


# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added. [Use default colors for tty, looks better!]
source ~/.cache/wal/colors-tty.sh
