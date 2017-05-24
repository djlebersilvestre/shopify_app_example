#!/bin/bash

command_exists() {
  command -v "$1" >/dev/null 2>&1; 
}

[[ -s "/opt/dev/sh/chruby/chruby.sh" ]] && source "/opt/dev/sh/chruby/chruby.sh"

if ! command_exists chruby; then
  echo "chruby is required to proceed with the setup script."
  echo "Aborting..."
  exit 1
fi

chruby `cat .ruby-version` || { echo "chruby failed. Aborting..."; exit 1; }

if ! command_exists bundler; then
  gem install bundler || { echo "gem install bundler failed. Aborting..."; exit 1; }
fi

bundle install || { echo "bundle install failed. Aborting..."; exit 1; }

echo "Type 'guard' in your terminal to run all tests, checks and start the server"
