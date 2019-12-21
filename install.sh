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

# Install Bash 5 using homebrew
brew install bash
echo /usr/local/bin/bash >> /etc/shells
chsh -s /usr/local/bin/bash
echo "BASH_VERSION: ${BASH_VERSION}"

# Install ZSH terminal
#brew install zsh
#sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Get theme
# https://github.com/mbadolato/iTerm2-Color-Schemes
# https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/xfce4terminal/colorschemes/JetBrains%20Darcula.theme
# TODO: Finish Automated Instalation ZSH themes


# Development
#brew install php
# brew install php@7.1
# brew install php-cs-fixer
# brew install php-code-sniffer
#brew install composer

brew install nvm
nvm install node
nvm install --lts
nvm alias default lts/*
nvm use default

brew install git
brew install bash-completion
#brew install git-lfs
brew install git-flow
brew install git-extras
#brew install angular-cli

# Utils
brew install curl
brew install wget
#brew install rsync
brew install coreutils

# Install GnuPG to enable PGP-signing commits.
#brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim

# Install some other useful utilities like `sponge`.
#brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

brew install openssl
brew install libyaml
brew install grep
brew install tree

###############################################################################
# Homebrew Cask                                                               #
###############################################################################

# Search
# https://caskroom.github.io/search

# browser
brew cask install google-chrome
brew cask install firefox

# development
brew cask install iterm2
brew cask install docker
#brew cask install phpstorm
brew cask install visual-studio-code
brew cask install sublime-text
brew cask install sourcetree
brew cask install postman
brew cask install mysqlworkbench
brew cask install sequel-pro
brew cask install sqlitestudio
brew cask install mongodb-compass
brew cask install robo-3t


# other
brew cask install slack
brew cask install skype
brew cask install vlc
brew cask install the-unarchiver
brew cask install teamviewer
brew cask install boxcryptor
#brew cask install spotify
brew cask install google-backup-and-sync
#brew cask install whatsapp
brew cask install appcleaner
brew cask install libreoffice
brew cask install zoom
brew cask install evernote
brew cask install telegram

###############################################################################
# Configure Applications                                                                   #
###############################################################################

# Git
git config --global user.name "Ronaldo Meneguite"
git config --global user.email "ronaldo@fireguard.com.br"

# Generate new RSA Key
ssh-keygen -t rsa -b 4096 -C "ronaldo@fireguard.com.br" -q -N ""
ssh-add ~/.ssh/id_rsa
