# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/lchin/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="bullet-train"
BULLETTRAIN_PROMPT_ORDER=(
  time
  dir
  nvm
  git
)
BULLETTRAIN_DIR_EXTENDED="0"
BULLETTRAIN_DIR_BG='cyan'
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="false"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
  zsh-history-substring-search
  zsh-nvm
  zsh-better-npm-completion
  git
  ruby
  node
  z
)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='code'
else
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# AWS PROFILE
export AWS_PROFILE=default

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshrc="code ~/.zshrc"

# Foreman
alias fm='foreman start -f'

# goto's
alias dt='cd ~/Desktop'
alias apps='cd ~/Applications'
alias docs='cd ~/Documents'
alias projects='cd ~/Documents/code/aa_projects'
alias h='history'
alias work='cd ~/Desktop/work'
alias ci='code-insiders'

# quick Search
alias qfind='find . -name '

# copys the working directory path to clipboard
alias here='pwd|tr -d "\n"|pbcopy'

# clear terminal
alias c='clear'

# mcd: Makes new Dir and jumps inside
mcd () { mkdir -p "$1" && cd "$1"; }

# trash: Moves a file to the MacOS trash
trash () { command mv "$@" ~/.Trash ; }

# opens current directory in MacOSx Finder
alias f='open -a Finder ./'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

#File/Folder Coloring
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
test -e ~/.dircolors && \
   eval `dircolors -b ~/.dircolors`
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"

# ls better
alias ls='ls -hGF --color=auto'
alias l='ls -lhGF --color=auto'
alias ld="ls -ld --color=auto"
alias lr="colorls -l -a"
alias lra="colorls -l -a"
alias lt='ls -At1 && echo "------Oldest-- "'
alias ltr='ls -Art1 && echo "------Newest--"'

#show/hide Hidden Files
alias show='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'

# rails
alias bi='bundle install'
alias serv='bundle exec rails s'
alias cons='bundle exec rails c'

# Git
alias reset--hard='git reset --hard origin/master'
alias gb='git branch'
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
alias gc='git checkout'
alias disc='git checkout --'
alias push='git push origin HEAD'
alias pull='git pull origin'
alias grh='git reset HEAD'
alias stash='git stash'
alias pack='git stash pop'
alias delb="git branch -D"
alias cm='git commit -v -m'
alias kill3000='lsof -wni tcp:3000 -t | xargs kill -9'
alias gcv='git commit -v'
alias rrep='rake routes | grep'
squash () {
  git rebase -i HEAD~"$1"
}
alias rename='git branch -m'

alias killr="lsof -i tcp:$1 | grep '(LISTEN)' | awk '{print $2}' | xargs kill 2>&1"

alias hmr="sh -c 'rm -rf public/packs/* || true && bundle exec rake react_on_rails:locale && bin/webpack-dev-server'"

# BrowserStack
alias bootBrowserStack='~/Desktop/work/BrowserStackLocal --key nJ1MHkgSnvSqA5tMsxmd'

# ngrok
ngrok() {
  if [[ "$1" = <-> ]]; then
    ~/Applications/ngrok http "$1"
  else
    ~/Applications/ngrok "$@"
  fi
}


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/11/bin

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
