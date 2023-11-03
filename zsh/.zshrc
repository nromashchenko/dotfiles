# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

source /usr/share/zsh-antigen/antigen.zsh
#source /usr/share/zsh/share/antigen.zsh

#
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the theme
#antigen theme carloscuesta/materialshell zsh/materialshell
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

#antigen theme https://github.com/benniemosher/the-one-theme TheOne

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions


# Tell Antigen that you're done.
antigen apply

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

export PAGER="less"
export EDITOR="vim"

export PATH=/usr/share/zsh-antigen/antigen:$PATH
export PATH=/home/nikolai/miniconda3/bin:$PATH

#source /opt/intel/mkl/bin/mklvars.sh intel64  

export PATH=/home/nikolai/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/nikolai/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/nikolai/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/nikolai/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/nikolai/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda activate base


# for ssh sessions in rxvt
export TERM=xterm-256color 
