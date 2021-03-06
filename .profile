# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -d "$HOME/.node_modules/bin" ] ; then
    PATH="$HOME/.node_modules/bin:$PATH"
    export npm_config_prefix=~/.node_modules
fi

# set path for haskell stack bins
#if [ -d "$HOME/.stack/programs/x86_64-linux/ghc-tinfo6-8.8.2/bin" ] ; then
#    PATH="$HOME/.stack/programs/x86_64-linux/ghc-tinfo6-8.8.2/bin:$PATH"
#fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set path for ghcup
if [ -d "$HOME/.ghcup/bin" ] ; then
    PATH="$HOME/.cabal/bin:${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/bin:$PATH"
fi

# set go bin directory
if [ -d "$HOME/go/bin" ] ; then
    PATH="$HOME/go/bin:$PATH"
fi

# set krazy2 directory
if [ -d "$HOME/.local/krazy2/bin" ] ; then
    PATH="$HOME/.local/krazy2/bin:$PATH"
fi

if [ -d "$HOME/.config/nvm" ]; then
    export NVM_DIR="$HOME/.config/nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
if [ -d "$HOME/.cargo/bin" ]; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi

# Solo si existe kvantum
#export QT_STYLE_OVERRIDE=kvantum
