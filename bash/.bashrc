#
# ~/.bashrc
#

#Run wal and generate colorschemes for each terminal.
(wal -r &)

#neofetch --colors 1 2 3 4 5 6 7 --ascii-colors 1 2 3 4 5 6 7 
neofetch --colors 1 2 3 4 5 6 7 --w3m


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1 set in /etc/bash.bashrc

#Make translucent
transset-df -i $WINDOWID .9 >/dev/null
