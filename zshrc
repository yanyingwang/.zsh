#!/usr/bin/env zsh

# auto pull in antibody
apphome=${0:a:h}

[[ ! -d $apphome/bundle ]] && mkdir $apphome/bundle
[[ ! -d $apphome/bundle/antibody ]] && git clone https://github.com/yanyingwang/antibody.git $apphome/bundle/antibody
[[ ! -d $apphome/bundle/oh-my-zsh ]] && git clone https://github.com/robbyrussell/oh-my-zsh.git $apphome/bundle/oh-my-zsh 

source $apphome/bundle/antibody/antibody.zsh


export ZSH=$apphome/bundle/oh-my-zsh
ZSH_THEME="robbyrussell"
#ZSH_THEME="afowler"
#ZSH_THEME="sunrise"
#ZSH_THEME="sorin"
plugins=(brew osx colorize encode64 extract history sudo git
         ruby rvm rails bundler gem
         colored-man-pages man aliases ubuntu man command-not-found postgres)
source $ZSH/oh-my-zsh.sh

#antibody oh-my-zsh <<EOF
#rails
#EOF

#zsh-syntax-highlighting
#zsh-history-substring-search 
#waga
#



# antibody bundle
antibody github zsh-users/zsh-syntax-highlighting
antibody github zsh-users/zsh-autosuggestions
antibody github zsh-users/zsh-history-substring-search
antibody github supercrabtree/k
antibody github yanyingwang/waga


#antibody oh-my-zsh theme robbyrussell
#antibody oh-my-zsh git
#antibody oh-my-zsh colored-man aliases rails
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=black"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=239"




# ruby
export PATH="$PATH:$HOME/.local/bin" # Add home local bin path
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# python
#[[ -f "/usr/local/bin/pyenv" ]] && eval "$(pyenv init -)"
#export PYENV_VERSION='3.6.3'


# js 
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# macos
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES  # for macOS fork



# scheme
export CHEZLIB=$HOME/chezlib
export CHEZSCHEMELIBDIRS=$HOME/.chezlib
export PATH="$PATH:$HOME/bin"  # akku
#export PATH="$PATH:/Applications/Racket v7.1/bin"  # racket


# git
alias gitignore='git rm --cached'


