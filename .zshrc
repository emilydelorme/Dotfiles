
### P10K ###
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

### OH MY ZSH PARAMS ###

# Path to your oh-my-zsh installation.
export ZSH="/home/emily/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

DISABLE_UPDATE_PROMPT="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git gradle rust sudo yarn zsh-navigation-tools 
          gitignore docker cp common-aliases archlinux 
          zsh-autosuggestions extract web-search yum 
          git-extras vagrant)

source $ZSH/oh-my-zsh.sh

### EMILY CUSTOM CONFIG ###

# Path

PATH=$PATH:~/.cargo/bin:/usr/local/gradle-source-build/bin/:/var/lib/snapd/snap/bin

export MANPATH="/usr/local/man:$MANPATH"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Alias

alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias reloadzsh="source ~/.zshrc"

alias yay="yay --color=always"

alias dodo="shutdown now"

alias make="colormake"

### DOCKER ###

alias startdocker="sudo systemctl start docker.service && sudo docker start portainer"
alias stopdocker="sudo systemctl stop docker.service"

# GPG key

export GPG_TTY="2AF2C3095480DF38"

### RUST ###

alias ls='exa'

### Make ###

export MAKEFLAGS="-j3"
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

### HAXE ###

alias haxelib="sudo haxelib"
alias haxe="sudo haxe"

### GO ###

export GOPATH=~/.gocode
