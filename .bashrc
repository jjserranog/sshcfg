# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export LANG='en_US.UTF-8' PS1='[\u@\h \W]$ ' PS2='>'

[[ ! $SSH_AUTH_SOCK ]] && eval $( ssh-agent )
[[ $( ssh-add -l | grep "/home/admjjserranog/.ssh/id_rsa" | wc -l ) -ne 1 ]] && ssh-add

export ANSIBLE_NOCOLOR=True
