#
# ~/.bashrc
#

#Run wal and generate colorschemes for each terminal.
(wal -r &)

#Display a neofetch on bash open
# neofetch --w3m $HOME/Downloads/neofetchImgs/tanya-degurechaff.jpg --crop_mode fit --size 200px --xoffset 5 --yoffset 5 --colors 1 2 3 4 5 6 7

neofetch --colors 1 2 3 4 5 6 7 --ascii_colors 1 2 3 4 5 6 7

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
#PS1 set in /etc/bash.bashrc

#Make translucent
transset-df -i $WINDOWID .9 >/dev/null
