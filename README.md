.zsh
====
my zsh config

# Qucick Start
```shell
sudo aptitude install zsh  # for ubuntu
sudo chsh -s zsh
git clone https://github.com/yanyingwang/.zsh.git $HOME/.zsh && \
echo '. $HOME/.zsh/zshrc' >> $HOME/.zshrc
```
Open a new terminal and wait for a second, everything will be setted.


# macOS
~~~shell
sudo chsh -s $(which zsh) $(whoami)
~~~
