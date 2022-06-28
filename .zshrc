# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
alias python=python3
# export PATH=${HOME}/anaconda3/bin/:$PATH

ZSH_THEME="macovsky"

plugins=(
  copyfile
  jsontools
  python
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


unpack(){
    if [ -f $1 ] ; then
            case $1 in
                    *.tar.bz2)   tar xvjf $1    ;;
                    *.tar.gz)    tar xvzf $1    ;;
                    *.bz2)       bunzip2 $1     ;;
                    *.rar)       unrar x $1     ;;
                    *.gz)        gunzip $1      ;;
                    *.tar)       tar xvf $1     ;;
                    *.tbz2)      tar xvjf $1    ;;
                    *.tgz)       tar xvzf $1    ;;
                    *.zip)       unzip $1       ;;
                    *.Z)         uncompress $1  ;;
                    *.7z)        7z x $1        ;;
                    *)           echo "Unable to extract '$1'" ;;
            esac
    else
            echo "'$1' is not a valid file"
    fi
}
eval "$(pyenv init -)"
export TERM=xterm-256color

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
