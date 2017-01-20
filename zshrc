#!/usr/bin/env zsh



# auto pull in antibody
apphome=${0:a:h}

[[ ! -d $apphome/bundle ]] && mkdir $apphome/bundle
[[ ! -d $apphome/bundle/antibody ]] && git clone https://github.com/yanyingwang/antibody.git $apphome/bundle/antibody
[[ ! -d $apphome/bundle/oh-my-zsh ]] && git clone https://github.com/robbyrussell/oh-my-zsh.git $apphome/bundle/oh-my-zsh 

source $apphome/bundle/antibody/antibody.zsh


# antibody bundle
antibody github zsh-users/zsh-syntax-highlighting

#antibody oh-my-zsh theme robbyrussell
#antibody oh-my-zsh git
#antibody oh-my-zsh colored-man aliases rails
export ZSH=$apphome/bundle/oh-my-zsh
ZSH_THEME="robbyrussell"
#ZSH_THEME="afowler"
#ZSH_THEME="sunrise"
#ZSH_THEME="sorin"
plugins=(git rails colored-man aliases ruby ubuntu)
source $ZSH/oh-my-zsh.sh


antibody github yanyingwang/waga


#antibody oh-my-zsh <<EOF
#rails
#EOF

#zsh-syntax-highlighting
#zsh-history-substring-search 
#waga
#


export PATH="$PATH:$HOME/.local/bin" # Add home local bin path

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Prevent Oh-My-Zsh to overwrite the GNU Screen window title
# and set title
#DISABLE_AUTO_TITLE="true"
#title 'Terminator –'
