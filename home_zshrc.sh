alias rs="rsync -aHP --info=progress2 --info=stats3"
alias c="clear && clear"
alias u="sudo apt update && apt list --upgradable && sudo apt upgrade"
alias py="python3"
alias rmd="rm -rf"
alias t="tree -ah -I '.git' -I '*_venv'"
alias dfj="df -hx 'squashfs'"
alias dus="du -bhd 1 | sort -h"
alias bat="batcat --paging never"

# dstat
alias dst="dstat -am --swap"

# venv
alias create_venv="~/dotfiles/create_venv.sh"
alias run_in_venv="~/dotfiles/run_in_venv.sh"

# tmux
alias tl="tmux list-sessions"
alias ta="tmux attach"
alias tat="tmux attach -t"

# toggle tmux mouse mode
tm() {
    if tmux show -g | grep -q "mouse on"; then
        tmux set -g mouse off
        echo "Tmux mouse mode off"
    else
        tmux set -g mouse on
        echo "Tmux mouse mode on"
    fi
}

# set nano as default editor
export EDITOR="nano"

# check if dotfiles-private exists and source it if it does
if [ -f ~/dotfiles/dotfiles-private/extra_zshrc.sh ]; then
    source ~/dotfiles/dotfiles-private/extra_zshrc.sh
fi
