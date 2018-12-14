alias ll='ls -al'
alias la='ls -a'
alias lm='ls -lap | more'
alias hello='echo "it'"'"'s me"'
alias my_name_is='echo chika chika slim shady'
#custom bash prompt via kirsle.net/wizards/ps1.html
#export PS1="\[$(tput bold)\]\[$(tput setaf 1)\] \[$(tput setaf 3)\]\u\[$(tput setaf 6)\]  \[$(tput setaf 4)\]\h \[$(tput setaf 1)\]  \[$(tput setaf 5)\]  \W\[$(tput setaf 2)\] ❱ \[$(tput sgr0)\]"
export PS1="\[$(tput bold)\]\[$(tput setaf 5)\]🍍 \W 🍍\[$(tput setaf 6)\] ❱ \[$(tput sgr0)\]"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#source ~/.bashrc
export API_KEY_MARK="OELfbW5LKnXdybddyKdsscg0vIg="
export CLIENT_ID_MARK="gme-regentsoftheuniversity"
alias sublime="open -a /Applications/Sublime\ Text.app"
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
