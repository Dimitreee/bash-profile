clear

# BASIC CONFIGURATION
#   ------------------------------------------------------------
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export LC_CTYPE="en_UK.UTF-8"
export LC_ALL="en_UK.UTF-8"
tput bel


# Allow npm install -g without needing sudo
npm config set prefix $dir


#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
export EDITOR=/usr/bin/nano
alias='$EDITOR ~/.bashrc ; source ~/.bashrc'

# Git branch in prompt.
#   ------------------------------------------------------------
parse_git_branch() {
 while read -r branch; do
     [[ $branch = \** ]] && current_branch=${branch#* }
 done < <(git branch 2>/dev/null)

 [[ $current_branch ]] && printf ' [%s]' "$current_branch"
}


## Modify Bash Prompt, Enable colors, improve ls
#   ------------------------------------------------------------
export PS1=">\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
#enable colors for git
if [ -f /usr/bin/git ]; then
    git config --global color.diff True
    git config --global color.branch True
fi

#################################################################
### start #######################################################
### tab completion extentions. tab completion makes life good ###
#################################################################

#tab completion for ssh hosts
if [ -f ~/.ssh/known_hosts ]; then
    complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
fi

# enable programmable completion features (you don't need to enable
# this if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#################################################################
### end #########################################################
### tab completion extentions. tab completion makes life good ###
#################################################################

#after loading everything that is generic to our environment, load user specifc stuff
[ -f ~/.bashrc.$whoami ] && . ~/.bashrc.$whoami
