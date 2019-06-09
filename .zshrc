# Load the shell dotfiles, and then some:
for file in ~/.{path,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Sandbox lazyloads slow modules like nvm and rvm
source $HOME/sandboxd/sandboxd

# Load Oh My Zsh
export ZSH="/Users/karlrombauts/.oh-my-zsh" 
ZSH_THEME="robbyrussell"
DISABLE_UPDATE_PROMPT=true

# Load ZSH Plugins
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

