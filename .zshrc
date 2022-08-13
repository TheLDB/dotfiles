export ZSH="$HOME/.oh-my-zsh"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="alanpeabody"

plugins=(git)

source $ZSH/oh-my-zsh.sh

PATH=$PATH:~/.local/bin

alias newApp="pnpm create next-app --example with-tailwindcss --ts"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PNPM_HOME="/Users/landonboles/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
