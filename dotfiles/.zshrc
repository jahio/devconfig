#!/bin/zsh
export HOMEBREW_GITHUB_API_TOKEN=""
source $(brew --prefix)/share/antigen.zsh

# Specify the editor for stuff like 'git commit',
# 'crontab -e', etc. etc. so on and so forth
export EDITOR="atom -w"

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# antigen standup
antigen use oh-my-zsh
# antigen bundle git
# antigen bundle brew
# antigen bundle brew-cask
# antigen bundle bundler
# antigen bundle chruby
# antigen bundle colored-man-pages
# antigen bundle colorize
# antigen bundle cp
# antigen bundle docker
antigen bundle git-prompt
# antigen bundle git-remote-branch
# antigen bundle github
# antigen bundle gitignore
# antigen bundle golang
# antigen bundle iwhois
# antigen bundle mosh
# antigen bundle osx
# antigen bundle redis-cli
# antigen bundle rsync
# antigen bundle ruby
# antigen bundle supercrabtree/k
# antigen bundle chrissicool/zsh-256color
# antigen bundle vasyharan/zsh-brew-services
# antigen bundle krujos/bosh-zsh-autocompletion
# antigen bundle Dannyzen/cf-zsh-autocomplete-plugin

# Settings for powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_SHORTEN_DIR_LENGTH=10
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_STATUS_VERBOSE=false

# Antigen theme "powerlevel9k"
antigen theme bhilburn/powerlevel9k powerlevel9k

# Aaaaand finally, wrap it up with antigen apply
antigen apply

# aliases for shits 'n giggles
alias htop="sudo htop"
alias vim="nvim"
alias ls="ls -FlchG"
alias be="bundle exec"

# Hook direnv into stuff so it can
# work its magic
eval "$(direnv hook zsh)"

# Fuzy Finder (brew install fzf)
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
