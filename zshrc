#!/usr/bin/env zsh

PWD=${0:a:h}


# auto pull in antibody
[[ ! -d bundle ]] && mkdir bundle
[[ ! -d bundle/antibody ]] && git clone https://github.com/yanyingwang/antibody.git bundle/antibody
source bundle/antibody/antibody.zsh


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
