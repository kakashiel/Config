#! /bin/sh


# COMPLETIONS
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-completions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.
#Bash completion compatibility
autoload bashcompinit && bashcompinit

zsh_add_plugin "Aloxaf/fzf-tab"
source $MYZDOTDIR/plugins/fzf-tab/fzf-tab.plugin.zsh



# HISTORY SUBSTRING SEARCHING
zsh_add_plugin "zsh-users/zsh-history-substring-search"
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^p" up-line-or-beginning-search # Up
bindkey "^n" down-line-or-beginning-search # Down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

