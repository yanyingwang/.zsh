#!/usr/bin/env zsh

# auto pull in antibody
apphome=${0:a:h}

# init antibody
[[ ! -d $apphome/bundle ]] && mkdir $apphome/bundle
[[ ! -d $apphome/bundle/antibody ]] && git clone https://github.com/yanyingwang/antibody.git $apphome/bundle/antibody
source $apphome/bundle/antibody/antibody.zsh


# oh my zsh
[[ ! -d $apphome/bundle/oh-my-zsh ]] && git clone https://github.com/robbyrussell/oh-my-zsh.git $apphome/bundle/oh-my-zsh 
export ZSH=$apphome/bundle/oh-my-zsh
ZSH_THEME="robbyrussell"
#ZSH_THEME="afowler"
#ZSH_THEME="sunrise"
#ZSH_THEME="sorin"
plugins=(brew osx colorize encode64 extract history sudo git
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
antibody github psprint/zsh-navigation-tools


#antibody oh-my-zsh theme robbyrussell
#antibody oh-my-zsh git
#antibody oh-my-zsh colored-man aliases rails
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=black"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=239"



if [[ $(uname) == "Darwin" ]]; then
  source $apphome/zshrc.macos
fi

# chromeos crew
if [[ $(whoami) == "chronos" ]]; then
  source $apphome/zshrc.chromeos
fi



# ruby
export PATH="$PATH:$HOME/.local/bin" # Add home local bin path
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*



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
acket -l rash/repl --
}
