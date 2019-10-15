# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ilysko/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
  copyfile
  jsontools
  python
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# aliases
alias virt="ssh ilysko-vm.openstack.go.devmail.ru -l i.lysko"
alias virt2="ssh ilysko-vm-2.openstack.go.devmail.ru -l i.lysko"
alias expt1="ssh srch-youla-experiment-t1.go.devmail.ru -l i.lysko"


# funcs
upload() {
    curl --upload-file $1 https://t.bk.ru
}
