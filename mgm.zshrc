# Load antigen and plugins/themes

source $HOME/dev/dotfiles/antigen/antigen.zsh

antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundles <<EOBUNDLES

lein
pip
gradle

# Guess what to install when running an unknown command.
command-not-found

# Helper for extracting different types of archives.
extract

# Help working with version control systems.
git

# nicoulaj's moar completion files for zsh
zsh-users/zsh-completions src

# ZSH port of Fish shell's history search feature.
zsh-users/zsh-history-substring-search

# Syntax highlighting bundle.
zsh-users/zsh-syntax-highlighting

# Pure theme with zsh-async
mafredri/zsh-async
sindresorhus/pure

EOBUNDLES

antigen apply

export PATH=/usr/local/depot_tools:/usr/local/sbin:$PATH

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export GOPATH=$HOME/go
export JAVA_HOME=$(/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java_home)
export PATH=$PATH:/usr/local/bin:/usr/local/opt/go/libexec/bin:$GOPATH/bin:~/bin:/usr/local/hadoop-2.5.0/bin

export ANDROID_HOME=/usr/local/opt/android-sdk
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/mmcdermott/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias hosts='sudo vi /etc/hosts'
alias fixMongo='sudo chown -R $USER /data'
alias editBash='sudo vim ~/.bash_profile'
alias gulp='node_modules/.bin/gulp'
alias karma='./node_modules/karma/bin/karma'
alias marathonctl='marathonctl -h http://elizabeth:8080 -u maayanlab:systemsbiology'

alias undopush="git push -f origin HEAD^:master"
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add"
alias gca="git commit -a -m"
alias gcm="git commit -m"
alias gbd="git branch -D"
alias gst="git status -sb --ignore-submodules"
alias gm="git merge --no-ff"
alias gpt="git push --tags"
alias gp="git push"
alias grs="git reset --soft"
alias grh="git reset --hard"
alias gb="git branch"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gba="git branch -a"
alias gcp="git cherry-pick"
alias gl="git log --pretty='%Cred%h%Creset | %C(yellow)%d%Creset %s %Cgreen(%cr)%Creset %C(cyan)[%an]%Creset' --graph"
alias gpom="git pull origin master"

# turn on coloring on grep
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
