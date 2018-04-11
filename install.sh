#!/bin/sh

###############################################################################
# Homebrew                                                                    #
###############################################################################

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

# Search
# http://formulae.brew.sh/
# Or brew list 'package-name'

# Install Bash 4 using homebrew
brew install bash
echo /usr/local/bin/bash >> /etc/shells
chsh -s /usr/local/bin/bash
echo "BASH_VERSION: ${BASH_VERSION}"

# Development
brew install php
# brew install php@7.1
# brew install php-cs-fixer
# brew install php-code-sniffer
brew install composer
brew install curl
brew install nvm
nvm install node
brew install git
#brew install git-lfs
brew install git-flow
brew install git-extras
brew install angular-cli

# Utils
brew install wget
brew install rsync
brew install coreutils

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

brew install openssl
brew install libyaml
brew install grep
#brew install zsh
brew install tree

###############################################################################
# Homebrew Cask                                                               #
###############################################################################

# Search
# https://caskroom.github.io/search

# homebrew-cask
brew tap caskroom/cask
brew tap caskroom/versions

# browser
brew cask install google-chrome
brew cask install firefox

# development
brew cask install docker
brew cask install phpstorm
brew cask install iterm2
brew cask install visual-studio-code
#brew cask install sublime-text
brew cask install sourcetree
brew cask install rdm # Redis Desktop Manager
brew cask install postman
brew cask install mysqlworkbench
brew cask install sequel-pro
#brew cask install sqlitestudio
#brew cask install mongodb-compass

# other
brew cask install slack
brew cask install skype
brew cask install vlc
brew cask install the-unarchiver
#brew cask install teamviewer
#brew cask install boxcryptor
#brew cask install spotify

###############################################################################
# Setup Git                                                                   #
###############################################################################
git config --global user.name "Ronaldo Meneguite"
git config --global user.email "ronaldo@fireguard.com.br"