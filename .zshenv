#!/usr/bin/env zsh

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# Editor
export EDITOR="nvim"
export VISUAL="nvim"
alias vim='nvim'

# Zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file


# fzf
# export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
# export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# export FZF_CTRL_T_OPTS=""
# export FZF_CTRL_R_OPTS=""
# export FZF_ALT_C_COMMAND=
# export FZF_ALT_C_OPTS=

# git
export GIT_REVIEW_BASE=master # See gitconfig

# rust
. "$HOME/.cargo/env"
export PATH="$HOME/.local/bin:$PATH"
