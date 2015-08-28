export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim
export TERM=xterm-256color

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"
ENABLE_CORRECTION="true"
# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git tmux zsh-syntax-highlighting history-substring-search common-aliases dirhistory)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=~/xia/codeploy:~/bin:/usr/share/perl5/vendor_perl/auto/share/dist/Cope/:$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl
export PATH=$(cope_path):$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl
#export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl
if [ -d "/home/eaufavor/gcf/src" ] ; then
	PATH="/home/eaufavor/gcf/src:/home/eaufavor/gcf/examples:$PATH"
	export PYTHONPATH="/home/eaufavor/gcf/src:$PYTHONPATH" 
fi

alias omni='omni.py'
alias omni-configure='omni-configure.py'
alias readyToLogin='readyToLogin.py'
alias clear-passphrases='clear-passphrases.py'
alias stitcher='stitcher.py'
alias remote-execute='remote-execute.py'
alias addMemberToSliceAndSlivers='addMemberToSliceAndSlivers.py'

[[ -e /usr/share/doc/pkgfile/command-not-found.zsh ]] && source /usr/share/doc/pkgfile/command-not-found.zsh
source /home/eaufavor/.oh-my-zsh/custom/plugins/zsh-autosuggestions/autosuggestions.zsh

#setopt nohup
#zle-line-init() {
#	    zle autosuggest-start
#    }
#zle -N zle-line-init
#bindkey '^T' autosuggest-toggle
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down
#zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
setopt HIST_IGNORE_SPACE
setopt hist_ignore_all_dups
setopt HIST_IGNORE_DUPS
alias vi=vim
#alias ya=yaourt
alias ya='PAGER="less -R" yaourt --pager --color'
alias go='google -n 3 -C'
