export PATH="/usr/local/bin:$PATH"
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# export PS1="\u \h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "
export PS1="\u@\h:\[\e[33m\]\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "

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
export FLYCTL_INSTALL="/Users/subhajit/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
#export PATH="/Applications/Emacs.app/Contents/MacOs/bin:$PATH"
# alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
# alias emacs='$(/Applications/Emacs.app/Contents/MacOS/Emacs "$@")'
alias uv="~/.local/bin/uv"
# sublime settings
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
. "$HOME/.cargo/env"

# Created by `pipx` on 2024-12-19 04:27:53
export PATH="$PATH:/Users/subhajit/.local/bin"

##
# Your previous /Users/subhajit/.bash_profile file was backed up as /Users/subhajit/.bash_profile.macports-saved_2025-01-27_at_01:23:12
##

# MacPorts Installer addition on 2025-01-27_at_01:23:12: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/subhajit/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/subhajit/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/subhajit/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/subhajit/Downloads/google-cloud-sdk/completion.bash.inc'; fi
