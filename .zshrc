####
# Edit and reload config
alias sa='source ~/.zshrc;echo "ZSH aliases sourced."'
alias bp='vim ~/.zshrc; sa'

####
# History
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

####
# Prompt
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '!'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:git:*' formats '%F{green}%r/%F{blue}%S %F{red}(%b) %F{gray}%m%u%c'

setopt PROMPT_SUBST
NEWLINE=$'\n'
#PROMPT='${NEWLINE}%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f${NEWLINE}> '
PROMPT='%F{red}${vcs_info_msg_0_}%f${NEWLINE}⚡︎'

####
# Autocomplete with case insensitive filenames
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

####
# Node
# Use fnm for node version management
eval "$(fnm env --use-on-cd)"

####
# Aliases
alias cat=bat
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias ga='git add'

####
# Project completion
export PROJECTS=/Users/latentflip/Code
fpath=(~/Code/latentflip/dotfiles/fns $fpath);
autoload -U $fpath[1]/*(.:t)

####
# Installed by /Users/latentflip/Code/latentflip/dotfiles
PATH=$PATH:/Users/latentflip/bin

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/latentflip/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
