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


##
## BASIC npm COMMANDS
#   ------------------------------------------------------------
alias npmOld=" npm outdated " 
alias npmNot=" npm prune " 
alias npmAllDependencies=" npm shrinkwrap "


## MAC commands
#   ------------------------------------------------------------
alias showExt=" defaults write NSGlobalDomain AppleShowAllExtensions -bool true "
alias hideAll=" defaults write com.apple.finder AppleShowAllFiles true "
alias showPath=" defaults write com.apple.finder _FXShowPosixPathInTitle -bool true "
alias showLIbrary=" chflags nohidden ~/Library "

alias setBootVolume=" bless --mount "/path/to/mounted/volume" --setBoot "
alias showAll=" diskutil list "
alias hideFolder=" chflags hidden /path/to/folder/ "
alias clearFontCache="
	atsutil databases -removeUser && \
	atsutil server -shutdown && \
	atsutil server -ping
"
alias macScreen=" system_profiler SPDisplaysDataType | grep Resolution "
alias lock=" /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend " 
alias bell=" tput bel "
alias show_all="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Dock"
alias hide_all='defaults write com.apple.finder ShowAllFiles FALSE  && killall Dock'


## root commands
#   ------------------------------------------------------------
alias rootMode=" dsenableroot "
alias su=" sudo su "


## index commands
#   ------------------------------------------------------------
alias disable=" Indexingmdutil -i off -d /path/to/volume "

# Show hidden files 
alias l.='ls -d .* --color=auto'
 
## MAC diagnosis commands
#   ------------------------------------------------------------
alias macScan=" sudo sysdiagnose -f ~/Desktop/ "
alias macInfo=" networksetup -listallhardwareports "
alias showOSX=" sw_vers "
alias macCore=" sysctl -n machdep.cpu.brand_string "
# Wakeup sleeping servers (replace mac with your actual server mac address)

# Audio
#   ------------------------------------------------------------
alias mute=" osascript -e 'set volume output muted true' "
alias noMute=" osascript -e 'set volume output muted false' "
alias audio1=" osascript -e 'set volume 1' "
alias audio2=" osascript -e 'set volume 2' "
alias audio3=" osascript -e 'set volume 3' "
alias audio4=" osascript -e 'set volume 4' "
alias audio5=" osascript -e 'set volume 5' "
alias audio6=" osascript -e 'set volume 6' "
alias audio7=" osascript -e 'set volume 7' "

# DELETE
#   ------------------------------------------------------------
alias secureDelete=" srm -r " 


#   Change Prompt
#   ------------------------------------------------------------
echo -n -e "\033]0;LeoLaneseltd\007"
echo -e "Kernel Information: " ;uname -smr
echo -e "${COLOR_BROWN}"; bash --version
echo -ne "${COLOR_GRAY}Uptime: "; uptime
echo -ne "${COLOR_GRAY}Server time is: "; date	


## shortcuts & directions
#   ------------------------------------------------------------
alias  rm='rm -rfv'
alias  root="cd ~/Documents/root"
alias  l="ls -la"
alias  ls="ls -aFhlG"
alias  ll="ls -l" 
alias  ls='ls -GFh'
alias  search=grep
alias  ..="cd .."
alias  ...="cd ../.."
alias  h="history"
alias  dh="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select LSQuarantineDataURLString from LSQuarantineEvent'"
alias  ddh="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
alias  used="defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'; killall Dock"

## git
#   ------------------------------------------------------------
alias git_change_to_push=" git diff --stat --patch origin master "
alias git_delete=' git add -u '
alias git_reverse=" git log --reverse --pretty=oneline | cut -c41- | nl | sort -nr "
alias git_DS=' 	git log --reverse --pretty=oneline | cut -c41- | nl | sort -nr '
alias git_config=" cat .git/config "
alias git_end_sprint=" git branch | grep -v 'master' | xargs git branch -D "
alias git_merge=" git difftool "
alias git_branch=" git branch -a "
alias git_log=" git log --graph --oneline --all --decorate --color "
alias git_log2=" git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short "
alias git_log3=" git log --pretty=oneline "
alias git_log4=" git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit "
alias git_log5=" git whatchanged -3 -p "
alias git_users=" git log --format='%aN' | sort -u "
alias git_diff=" git log -p "
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all &'
alias git_i=" git add -i "
alias git_me=" git log --author=LeoLanese "
alias git_remote=" git remote -v "
alias git_clean=" find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch; 
		git config --global core.excludesfile ~/.gitignore;
		echo .DS_Store >> ~/.gitignore "
alias git_all_users='git log --format='%aN' | sort -u '
alias git_tasks=' grep --exclude-dir=.git -rEI "TODO|FIXME" . 2>/dev/null '
alias git_ignore=' find . \( -type d -empty \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitignore \; '
alias git_undelete=' git checkout $(git rev-list -n 1 HEAD -- "$file")^ -- "$file" '
alias git_idea=' git rm -r --cached .idea '
alias n=' NODE_ENV=development grunt server '
alias sprint_start=" git branch -D 'git branch | grep -E 'IVMA-..*'' "  
alias contributors=' git shortlog -sn '
alias git_name=' git config user.name '


## ports
#   ------------------------------------------------------------
alias check_open_ports="lsof -Pi | grep LISTEN"
alias check_port="lsof -i :8888"
alias check_establish="lsof -i | grep -i estab"


# Watch Network Traffic
#   ------------------------------------------------------------
alias network=" nettop -m route "

 
## aliases
#   ------------------------------------------------------------
alias get_ip='curl ip.telize.com'
alias get_macaddress='networksetup -getmacaddress Wi-Fi'
alias ip='curl -s http://wtfismyip.com/text'
alias ip2='curl l2.io/ip'
alias header='curl -I g.cn'
alias validate_json='curl -s "http://feeds.delicious.com/v2/json?count=5" | python -m json.tool | less -R'
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs
alias crazy=" LC_ALL=C tr -c '[:digit:]' ' ' < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR='1;32' grep --color '[^ ]' "
alias json_rest=" open http://jsontest.com/ "
#alias matrix='yes 'c=(" " "  " "   " 0 1); printf "${c[RANDOM%5]}"' | bash'
alias make_svg=' open http://www.vectorization.org/es.html '


## the "qp" alias ("que pasa")
#   ------------------------------------------------------------
alias qp="ps auxwww"


## Work projects
#   ------------------------------------------------------------
alias work_staff=" open https://github.com/pik-software/staff-front"
alias personal_karma=" open https://github.com/Dimitreee/karmaAuth_theme6 "


## profile
#   ------------------------------------------------------------
alias edit_profile=" open -e ~/.bash_profile "
alias reload_profile=" source ~/.bash_profile "


## web development
#   ------------------------------------------------------------
alias edit_hosts="open -e /etc/hosts"
alias edit_httpd="open -e /etc/apache2/httpd.conf"


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
