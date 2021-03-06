#######################################################################
# .bashrc                                                             #
# version 0.2.1                                                       #
# by Paul Duncan <pabs@pablotron.org>                                 #
#######################################################################

###############################
# Source Global Configuration #
###############################
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ "$PS1" ]; then
	keychain --nolock ~/.ssh/id_dsa
	. ~/.keychain/${HOSTNAME}-sh
else
###########################
# Non-Interactive Startup #
###########################
   :
fi

###################
# General Startup #
###################
umask 002
mesg n

PATH="$HOME/bin:/usr/local/bin:/usr/X11R6/bin:$PATH"
HISTIGNORE="$HISTIGNORE:ls:cd"

export PATH HISTIGNORE

#####################################
# Custom (Machine-Specific) Startup #
#####################################
. ~/.bash/custom.sh

export EDITOR=vim

# This line was appended by KDE
# Make sure our customised gtkrc file is loaded.
# (This is no longer needed from version 0.8 of the theme engine)
# export GTK2_RC_FILES=$HOME/.gtkrc-2.0

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

case $TERM in
	xterm*|rxvt*)
		TITLEBAR='\[\033]0;\u@\h:\w\007\]'
		;;
	*)
		TITLEBAR=""
		;;
esac;
#  Prompt generated by Giles's Prompt-o-matic, 20080521
#  http://www.gilesorr.com/bashprompt/jsb/prompt.html

PS1="${TITLEBAR}\[\033[0m\]\[\033[1;37m\][\[\033[0m\]\[\033[1;33m\]\u\[\033[0m\]\[\033[1;37m\]@\[\033[0m\]\[\033[0;35m\]\h\[\033[0m\]\[\033[1;37m\]\[\033[0m\]\[\033[1;37m\]:\[\033[0m\]\[\033[1;34m\]\[\033[0m\]\[\033[0;36m\]\w\[\033[0m\]\[\033[1;37m\]]# \[\033[0m\]\[\033[0;0m\]"



#colors in ls

alias ls="ls --color=yes"

