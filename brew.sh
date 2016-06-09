#
# Check if Homebrew is installed
#
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    # https://github.com/mxcl/homebrew/wiki/installation
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

brew install git
brew install git-extras
brew install zsh
brew install gnupg
brew install thefuck

brew cask install atom
brew cask install java
brew cask install google-chrome
brew cask install google-drive
brew cask install alfred
brew cask install dash
brew cask install iterm2
brew cask install virtualbox
brew cask install caffeine
brew cask install shiftit
brew cask install the-unarchiver
brew cask install transmit
brew cask install transmission
brew cask install evernote

brew cask cleanup
brew cleanup
