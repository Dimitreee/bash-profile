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


## FIX logging (don not stop running processes)
alias logout="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias logoff="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"


## FIX sleep problem on MAC laptops (handle with care)
#   ------------------------------------------------------------
alias when_sleep=' sudo pmset -a '
alias hibernate=' sudo pmset -a hibernatemode 25 '
alias sleep=' sudo pmset -a hibernatemode 0 '
alias safesleep=' sudo pmset -a hibernatemode 3 '
alias smartsleep=' sudo pmset -a hibernatemode 2 '


# SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------
alias mountReadWrite='/sbin/mount -uw /'    # mountReadWrite:   For use when booted into single-user


## FIX and destroy .DS_Store files in the folder I am currently in
#   ------------------------------------------------------------
alias killDS='find . -name *.DS_Store -type f -delete'


## git configuration
# specify a global exclusion list
#   ------------------------------------------------------------
git config --global core.excludesfile ~/.gitignore
# adding .DS_Store to that list
echo .DS_Store >> ~/.gitignore


## testing libs available status
#   ------------------------------------------------------------
alias testme='	git --version;
		node --version;
		npm --version;
		bower -v;
		karma --version;
        	phantomjs --version;
		casperjs --version;
		grunt -version;
	    	php -v;
		mongo --version; 
		mongod --version;
		mongos --version;
		yo --version;
		grunt --version;
		bower --version;
        	sass -v;
		protractor --version;
		cordova -v;
		uname -a;
		sw_vers;
		webpack -v;
	'


## finder
#   ------------------------------------------------------------
alias f='open -a Finder ./'
alias .='open -a Finder ./'


## where is my stuff
#   ------------------------------------------------------------
alias where='
		which git;
        	which express;
		which yo; 
		which gulp;
		which mongo;
		which cordova;
		which php;
		which npm;
		which node;
		which bower;
		which pouchdb;
		which couchdb;
	'


## REMOVING all the Node dependencies
#   ------------------------------------------------------------
# alias npm_dev='npm ls | grep -v 'npm@' | awk '/@/ {print $2}' | awk -F@ '{print $1}' | xargs npm rm'


# Start calculator with math support
alias bc='bc -l'


## Improving the terminal for fast typers
#   ------------------------------------------------------------		
alias cd..='cd ../'                         # Go back 1  level 
alias ..='cd ../'                           # Go back 1  level
alias ...='cd ../../'                       # Go back 2  levels
alias .3='cd ../../../'                     # Go back 3  levels
alias .4='cd ../../../../'                  # Go back 4  levels
alias .5='cd ../../../../../'               # Go back 5  levels
alias .6='cd ../../../../../../'            # Go back 6  levels
alias c='clear'   
alias show_options='shopt'
alias make1mb='mkfile 1m ./1MB.dat'         # make1mb:      Creates a file of 1mb size (all zeros)
alias make5mb='mkfile 5m ./5MB.dat'         # make5mb:      Creates a file of 5mb size (all zeros)
alias make10mb='mkfile 10m ./10MB.dat'      # make10mb:     Creates a file of 10mb size (all zeros)



#   extract:  Extract most know archives with one command
#   -----------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }


#   spotlight: Search for a file using MacOS Spotlight's metadata
#   -----------------------------------------------------------
spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }


## get top process eating memory
alias psmem='ps aux | sort -nr -k 4'
alias psmem10='ps aux | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps aux | sort -nr -k 3'
alias pscpu10='ps aux | sort -nr -k 3 | head -10'

#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
