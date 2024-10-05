export PATH="/usr/local/bin:$PATH"
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# export PS1="\u \h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "
export PS1="[\u@\h \[\e[33m\]\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]]$ "

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH
export PATH=$PATH:/Users/subhajit/go/bin
export PATH=$(brew --prefix openvpn)/sbin:$PATH
export GOPATH=$HOME/go/
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-20.jdk/Contents/Home

# sublime settings
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
. "$HOME/.cargo/env"
