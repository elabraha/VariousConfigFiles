alias python2.7=/usr/local/bin/python2.7
alias python=$HOME/anaconda3/bin/python3
export PATH="~/anaconda333/bin:$PATH"
# added by Anaconda3 4.2.0 installer
export PATH="/Users/elianaabraham/anaconda3/bin:$PATH"
export PATH=$PATH:$HOME/bin
#export TERM="xterm-256color"
if [[ -n "$TMUX" ]]; then
    printf "\033k$(hostname)\033\\";
fi
#source ~/.bash_profile
