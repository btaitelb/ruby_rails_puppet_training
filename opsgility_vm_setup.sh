#!/bin/bash

# general dependencies
sudo apt-get install -y emacs puppet

# rubygems dependencies
sudo apt-get install -y gcc make ruby-dev libxml2-dev libz-dev

# rails dependencies
sudo apt-get install -y libsqlite3-dev nodejs

# set up non-sudo gem installs
if [ -z "$(grep GEM_HOME ~/.bashrc)" ]; then
    echo 'export GEM_HOME="$HOME/.gems"' >> ~/.bashrc
    echo 'export GEM_HOME="$HOME/.gems"' >> ~/.profile
    echo 'export PATH="$PATH:$HOME/.gems/bin"' >> ~/.bashrc
    echo 'export PATH="$PATH:$HOME/.gems/bin"' >> ~/.profile
fi

source ~/.profile

# make gem installs faster
if [ -z "$(grep no-document ~/.gemrc)" ]; then
    echo 'gem: --no-document' >> ~/.gemrc
fi

# install some gems we'll need
gem install bundler rails pry

