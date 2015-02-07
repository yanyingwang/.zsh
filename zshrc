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
plugins=(git rails colored-man aliases)
source $ZSH/oh-my-zsh.sh


antibody github yanyingwang/waga


#antibody oh-my-zsh <<EOF
#rails
#EOF

#zsh-syntax-highlighting
#zsh-history-substring-search 
#waga
#

# ruby
if [[ -f /usr/local/share/chruby/chruby.sh ]]
then
  if [ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ]
  then
    source /usr/local/share/chruby/chruby.sh
    #source /usr/local/share/chruby/auto.sh
    # exec cmd next line to set default version:
    # echo "ruby-2.1.5" > ~/.ruby-version
    chruby ruby-2.1.5
  fi
fi

if [[ -f $HOME/.rvm/scripts/rvm ]]
then
  . $HOME/.rvm/scripts/rvm
fi

