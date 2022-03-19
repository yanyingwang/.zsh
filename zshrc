#!/usr/bin/env zsh

# auto pull in antibody
apphome=${0:a:h}

# init antibody
[[ ! -d $apphome/bundle ]] && mkdir $apphome/bundle
[[ ! -d $apphome/bundle/antibody ]] && git clone https://github.com/yanyingwang/antibody $apphome/bundle/antibody
source $apphome/bundle/antibody/antibody.zsh


# oh my zsh
[[ ! -d $apphome/bundle/oh-my-zsh ]] && git clone https://github.com/robbyrussell/oh-my-zsh.git $apphome/bundle/oh-my-zsh 
export ZSH=$apphome/bundle/oh-my-zsh
ZSH_THEME="robbyrussell"
#ZSH_THEME="afowler"
#ZSH_THEME="sunrise"
#ZSH_THEME="sorin"
plugins=(brew colorize encode64 extract history sudo git
         ruby rvm rails bundler gem
         colored-man-pages man ubuntu man command-not-found postgres)
source $ZSH/oh-my-zsh.sh
#antibody oh-my-zsh <<EOF
#rails
#EOF
#zsh-syntax-highlighting
#zsh-history-substring-search 
#waga
#


# antibody bundle plugins
antibody github zsh-users/zsh-syntax-highlighting
antibody github zsh-users/zsh-autosuggestions
antibody github zsh-users/zsh-history-substring-search
antibody github supercrabtree/k
antibody github yanyingwang/waga
antibody github  z-shell/zsh-navigation-tools
#antibody github zdharma-continuum/zsh-navigation-tools # psprint/zsh-navigation-tools


#antibody oh-my-zsh theme robbyrussell
#antibody oh-my-zsh git
#antibody oh-my-zsh colored-man aliases rails
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=black"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=239"



if [[ $(uname) == "Darwin" ]]
then
  source $apphome/zshrc.macos
fi


if [[ $(uname) == "linux" ]]
then
  source $apphome/zshrc.linux
fi

# chromeos crew
if [[ $(whoami) == "chronos" ]]
then
  source $apphome/zshrc.chromeos
fi



# ruby
if [[ -e "$HOME/.rvm" ]]
then
  #export PATH="$PATH:$HOME/.local/bin" # Add home local bin path
  export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi



# python
#[[ -f "/usr/local/bin/pyenv" ]] && eval "$(pyenv init -)"
#export PYENV_VERSION='3.6.3'


# js
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# chez scheme
export CHEZLIB=$HOME/chezlib
export CHEZSCHEMELIBDIRS=$HOME/.chezlib
export PATH="$PATH:$HOME/bin"  # akku




# ssh tunnel
alias ssh-tunnel-on='ssh -fN $1'
alias ssh-tunnel--check='ssh -O check $1'
alias ssh-tunnel-off='ssh -O exit $1'



# rash-repl
rash-repl() {
racket -l rash/repl --
}




export TERM=xterm-256color
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"




### history
HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
HISTFILESIZE=$HISTSIZE

# Avoid duplicates
HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
# shopt -s histappend

# After each command, append to the history file and reread it
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"



enable_http_proxy() {
  export http_proxy=socks5://127.0.0.1:1086
}
show_http_proxy() {
  echo $http_proxy
}

forg-serve() {
raco frog -wbpV
}
