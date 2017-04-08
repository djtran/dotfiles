#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

COLOR2="$(tput setaf 2)"
COLOR1="$(tput setaf 1)"
COLOR3="$(tput setaf 3)"
COLOR4="$(tput setaf 4)"
COLOR7="$(tput setaf 7)"

parse_git_branch(){
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


if [ $(id -u) -eq 0 ];
then
	PS1="\[${COLOR2}\][\D{%m/%d} \t | \h]\[${COLOR7}\]\$(parse_git_branch)\[${COLOR4}\] \w\n\[${COLOR1}\]ᐷ \[${COLOR7}\]"
else
	PS1="\[${COLOR2}\][\D{%m/%d} \t | \u]\[${COLOR7}\]\$(parse_git_branch)\[${COLOR4}\] \w\n\[${COLOR1}\]ⵐ \[${COLOR7}\]"
fi

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
