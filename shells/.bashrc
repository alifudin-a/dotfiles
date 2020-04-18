#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#neofetch

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#GoLang
#export GOROOT=/usr/lib/go
#export GOPATH=$HOME/go
#export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

#remove shadow
#for WID in $(xwininfo -root -tree | sed '/"Plasma": ("plasmashell" "plasmashell")/!d; s/^  *\([^ ]*\) .*/\1/g'); do
  # xprop -id $WID -remove _KDE_NET_WM_SHADOW
#done

#Flutter
export PATH="$PATH:/home/divierda/flutter/bin"

#Appmenu gtk module usage

if [ -n "$GTK_MODULES" ]; then
    GTK_MODULES="${GTK_MODULES}:appmenu-gtk-module"
else
    GTK_MODULES="appmenu-gtk-module"
fi

if [ -z "$UBUNTU_MENUPROXY" ]; then
    UBUNTU_MENUPROXY=1
fi

export GTK_MODULES
export UBUNTU_MENUPROXY

neofetch
