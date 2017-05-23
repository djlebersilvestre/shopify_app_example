#!/bin/bash

# TODO: find a way to rename the project to a new name chosen by the user

command_exists() {
  command -v "$1" >/dev/null 2>&1; 
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

if ! command_exists rvm; then
  echo "RVM is required to proceed with the setup script."
  echo "Please check https://rvm.io/rvm/install for installation instructions."
  echo "Aborting..."
  exit 1
fi

rvm use `cat .ruby-version`@`cat .ruby-gemset` --create || { echo "rvm use failed. Aborting..."; exit 1; }

if ! command_exists bundler; then
  gem install bundler || { echo "gem install bundler failed. Aborting..."; exit 1; }
fi

bundle install || { echo "bundle install failed. Aborting..."; exit 1; }

echo "Type 'guard' in your terminal to run all tests, checks and start the server"
