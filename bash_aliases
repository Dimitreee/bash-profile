
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
