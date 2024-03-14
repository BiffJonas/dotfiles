export BROWSER="firefox-developer-edition"
export TERMINAL="alacritty"
export PATH="/opt/apache-maven-3.9.6/bin:$PATH"

export DISPLAY=:0
set -o vi

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.xprofile ]; then
    . ~/.xprofile
fi


if [ -f ~/.bash_keybindsrc ]; then
    . ~/.bash_keybindsrc
fi

eval "$(starship init bash)"
eval "$(zoxide init bash --cmd c)"
