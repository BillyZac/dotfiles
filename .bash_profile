# git TAB completion
. /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash

# GPG
eval $(gpg-agent --daemon --no-grab --write-env-file $HOME/.gpg-agent-info)
export GPG_TTY=$(tty)
export GPG_AGENT_INFO

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Java JDK 8
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home

# Lets you run programs from the command line, like `$ atom`
PATH=$PATH:~/bin
PATH="$PATH:$HOME/usr/local/Cellar/chromedriver/2.21/bin"

# Aliases
alias a='atom .'

export PATH="$HOME/.cargo/bin:$PATH"
