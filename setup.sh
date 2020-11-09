#!/bin/sh

set -e

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh

brew install python

brew install nvm

nvm install 8
nvm install 10
nvm install 12
nvm install 14
nvm install 15

brew install yarn
