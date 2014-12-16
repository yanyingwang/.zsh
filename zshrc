#!/usr/bin/env zsh



# auto pull in antibody
apphome=${0:a:h}

[[ ! -d $apphome/bundle ]] && mkdir $apphome/bundle
[[ ! -d $apphome/bundle/antibody ]] && git clone https://github.com/yanyingwang/antibody.git $apphome/bundle/antibody

source $apphome/bundle/antibody/antibody.zsh


# antibody bundle
antibody github zsh-users/zsh-syntax-highlighting

antibody oh-my-zsh theme robbyrussell
antibody oh-my-zsh git
antibody oh-my-zsh colored-man aliases rails

antibody github yanyingwang/waga

#antibody oh-my-zsh <<EOF
#rails
#EOF

#zsh-syntax-highlighting
#zsh-history-substring-search 
#waga
#

if [[ -f /usr/local/share/chruby/chruby.sh ]]
then
  source /usr/local/share/chruby/chruby.sh
  chruby ruby-2.1.5
fi

