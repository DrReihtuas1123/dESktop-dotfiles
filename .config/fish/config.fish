# ================================================================== #
#                                                                    #
#           Fish Configuration File                                  #
#           By E. Sauthier                                           #
#                                                                    #
# ================================================================== #

##########################################
###             Startup                ###
##########################################

#bash -c "if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then exec sway; fi"

#if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]
#    exec sway
#end

#if status is-interactive
#    # Commands to run in interactive sessions can go here
#end

# config prompt length
set -g fish_prompt_pwd_dir_length 1

##########################################
###              aliases               ###
##########################################

alias neofetch="fastfetch"
#alias nvim="nvim -u /home/emile/.vimrc"
#alias vim='nvim'
#alias :q='exit'
alias vpython='~/.venv/bin/python'
alias matlab='~/matlab/bin/matlab -nodesktop'
alias detach='kitty --detach --directory="$(pwd)"'

#fastfetch

# Created by `pipx` on 2025-03-18 08:36:02
set PATH $PATH /home/emile/.local/bin

#thefuck --alias | source
