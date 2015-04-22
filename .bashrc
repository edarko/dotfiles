#
# ~/.bashrc
#
archey3
xcompmgr -c &
setxkbmap -layout gb
export TERM=rxvt
export EDITOR=vim
export BROWSER="firefox"

PS1="\["$yellow"\]\[\$((LCNT=1))\]\[\010\]\u\["$reset"\]@\h:\W\["$yellow"\]$\["$reset"\] "
PS2="\["$yellow"\]\$((LCNT++)):\["$reset"\] "
PS3="Choice?: "
PS4=$PS2

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias'
alias reload='source ~/.bashrc'
alias reloadx='xrdb -merge ~/.Xresources'
alias ls='ls --color=auto'
alias reboot='sudo shutdown -r now'
alias shutdown='sudo shutdown -h now'
alias refresh='pacman -Syu'
alias clean='pacman -Sc'

# Functions


colortest(){
        local text=${1:-"gYw"}
        echo -ne "\n                 "
        echo -e  "40m     41m     42m     43m     44m     45m     46m     47m";
	        for FGs in      "    m" "   1m" "  30m" "1;30m" "  31m" "1;31m" "  32m" \
	                        "1;32m" "  33m" "1;33m" "  34m" "1;34m" "  35m" "1;35m" \
	                        "  36m" "1;36m" "  37m" "1;37m"; do FG=${FGs// /}
		                echo -ne " $FGs \033[$FG  $text  "
			                for BG in 40m 41m 42m 43m 44m 45m 46m 47m
			                        do echo -ne "$EINS \033[$FG\033[$BG  $text  \033[0m"
			        done
			        echo
		done
		echo
}

