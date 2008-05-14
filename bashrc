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
#######################
# Interactive Startup #
#######################
    . ~/.bash/aliases.sh
    #. ~/.bash/completions.sh
    . ~/.bash/prompt.sh
    . ~/.bash/functions.sh
	keychain --nolock ~/.ssh/id_dsa
	. ~/.keychain/${HOSTNAME}-sh
    fortune
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
