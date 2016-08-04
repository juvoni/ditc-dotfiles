export PATH=/usr/local/sbin:/usr/local/bin:/usr/local/opt/go/libexec/bin:$PATH
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export JAVA_HOME=$(/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java_home)

export ANDROID_HOME=/usr/local/opt/android-sdk
# Load antigen and plugins/themes

export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.103:2376"
export DOCKER_CERT_PATH="/Users/mcdermmg/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"

source $HOME/dev/dotfiles/antigen/antigen.zsh

antigen bundles <<EOBUNDLES

# Pure theme with zsh-async
mafredri/zsh-async
sindresorhus/pure

z
npm
git
# lein
# pip
# gradle

# Guess what to install when running an unknown command.
# command-not-found

# Helper for extracting different types of archives.
# extract

# nicoulaj's moar completion files for zsh
zsh-users/zsh-completions src

# Syntax highlighting bundle.
zsh-users/zsh-syntax-highlighting

# ZSH port of Fish shell's history search feature.
zsh-users/zsh-history-substring-search

EOBUNDLES

antigen apply

# zsh-history-substring-search settings
zmodload zsh/terminfo
bindkey "$terminfo[cuu1]" history-substring-search-up
bindkey "$terminfo[cud1]" history-substring-search-down

eval $(thefuck --alias)

# Ignore duplicates in history.
setopt HIST_IGNORE_ALL_DUPS

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias hosts='sudo vim /etc/hosts'
alias fixMongo='sudo chown -R $USER /data'

alias ∞="npm run start"

alias undopush="git push -f origin HEAD^:master"
alias gg="clear; git st 2>/dev/null || (pwd && ls -a)"
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
alias gfr="git fetch && git rebase"

alias rmni="rm -rf node_modules/ && npm install --cache-min 999999"
alias ni="npm install --cache-min 999999"
alias nis="npm install --save"
alias nisd="npm install --save-dev"

# turn on coloring on grep
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias grep='grep --color=auto'
