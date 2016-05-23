# User settings
git config --global user.name "Michael McDermott"
git config --global user.email "michael@mgmcdermott.com"

# Aliases
git config --global alias.st "status --short --branch"
git config --global alias.cma "commit -a -m"
## Diff-prose
git config --global alias.dp "diff --word-diff --unified=10"
## Quick merge
git config --global alias.qm "!git checkout $1;git merge @{-1}"
## Pretty history
git config --global alias.lg "log --pretty='%Cred%h%Creset | %C(yellow)%d%Creset %s %Cgreen(%cr)%Creset %C(cyan)[%an]%Creset' --graph"
## Show object
git config --global alias.so "show --pretty='parent %Cred%p%Creset commit %Cred%h%Creset%C(yellow)%d%Creset%n%n%w(72,2,2)%s%n%n%w(72,0,0)%C(cyan)%an%Creset %Cgreen%ar%Creset'"
# Core settings
## Only paginate info like git diff if needed
git config --global core.pager 'less -RFX'

# Algorithms
## Always use histogram algorithm in diff (git >1.8.2)
git config --global diff.algorithm histogram
