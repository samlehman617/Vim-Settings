# Sudo
alias sudo="sudo "                                                             # Allows using sudo in other bash aliases
alias su="sudo "
alias s="sudo "

# Installing
alias add="sudo add-apt-repository "                                           # Quickly add repo
alias update="sudo apt-get update"                                             # Quickly refresh sources
alias install="sudo apt-get install "                                          # Quickly install package

# Launching applications
alias terminal='gnome-terminal &'                                                # Open new terminal
alias calc='gnome-calculator &'                                                  # Opens calculator
alias settings='gnome-control-center &'                                        # Opens settings

# Vim Stuff
alias svi='sudo vi'                                                            # Allows editing documents with superuser permissions
alias edit='vim'                                                               # Extra name

# File Locations
    # Moving around
    alias ..='cd ..'                                                           # Moves up a directory
    alias ...='cd ../..'                                                       # Moves up two directories
    alias ....='cd ../../..'                                                   # Moves up three directories
    alias .....='cd ../../../..'                                               # Moves up four directories
    alias cd..='cd ..'                                                         # Corrects typo missing space
    alias mkdir='mkdir -pv'                                                    # Creates new directory and its parent directories
    alias mcd='mkdircd'
    # Coding locations
    alias code='cd /media/sam/Storage/Cloud/Documents/Code'
    alias cs='cd /media/sam/Storage/Cloud/Documents/Code/CMPSC311'
    alias proj1='cd /media/sam/Storage/Cloud/Documents/Code/CMPSC311/project1'
    alias proj2='cd /media/sam/Storage/Cloud/Documents/Code/CMPSC311/project2'
    alias proj3='cd /media/sam/Storage/Cloud/Documents/Code/CMPSC311/project3'
    alias proj4='cd /media/sam/Storage/Cloud/Documents/Code/CMPSC311/project4'
    alias proj5='cd /media/sam/Storage/Cloud/Documents/Code/CMPSC311/project5'
    # Class-related locations
    alias school='cd /media/sam/Storage/Cloud/Documents/Class'
    alias cmpsc360="nautilus '/media/Storage/Cloud/Documents/Class/CMPSC 360'"
    alias cmpsc311="nautilus '/media/Storage/Cloud/Documents/Class/CMPSC 311'"
    alias cmpen271="nautilus '/media/Storage/Cloud/Documents/Class/CMPEN 271'"
    alias astro="nautilus '/media/Storage/Cloud/Documents/Class/ASTRO 001'"
    alias ana="nautilus '/media/Storage/Cloud/Documents/Class/A&A 121'"
    alias math220="nautilus '/media/Storage/Cloud/Documents/Class/MATH 220'"
    # Common file locations
    alias downloads='nautilus /media/Storage/Downloads'
    alias music='nautilus /media/Storage/Music'
    alias photos="nautilus '/media/Storage/Cloud/Google Photos'"

# Settings
alias vimrc='vi ~/.vimrc'                                                       # Edit .vimrc
alias addalias='vi ~/.bash_aliases'                                             # Edit .bash_aliases
alias bashrc='vi ~/.bashrc'                                                     # Edit .bashrc
alias editgrub='sudo vi /etc/default/grub && sudo update-grub'                  # Edit grub config and update
alias addgrub='sudo vi /etc/grub.d/40_custom && sudo update-grub'               # Add grub entries and update

# System Info
alias volume="amixer get Master | sed 'l,4,d' | cut -d [ -f 2 | cut -d ] -f l"  # Get current system volume
alias meminfo='free -m -l -t'                                                   # Get system memory quickly
alias ps?='ps aux | grep'                                                       # Find PID of any process
alias histg='history | grep'                                                    # Cleaner history
alias h='history'                                                               # Shows bash history
alias j='jobs -l'                                                               # Shows running jobs

# Networking
alias port='netstat -tulanp'                                                    # Shows all processes connecting to the network
alias ipinfo="curl ifconfig.me && curl ifconfig.me/host"                        # Get public IP and host

# Compiling
compile() {
    if [ -f $1 ] ; then
        gcc -o $1 && ./$1 
    else
        echo "'$1' could not be compiled or run"
    fi
}

# Archives
extract() {                                                                     # Extract an archive regardless of filetype 
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

# Reference
alias ascii='man ascii'
showa() {                                                                       # List all bash aliases
    echo ~/.bash_aliases | grep -v '^\s*$' ; 
}

# Other
alias cdiff='colordiff'                                                         # Compares files and colorizes the output
#alias busy="cat /dev/urandom | hexdump -C | grep "ca fe""                       # Print fancy nonsense
alias c='clear'                                                                 # Clear terminal
