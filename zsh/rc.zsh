# zsh setup
export EDITOR=nvim

# oh-my-zsh setup
export ZSH="~/.oh-my-zsh" # Install path
plugins=(git npm nvm sudo z zsh-autosuggestions)
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Load completion & config
fpath+=~/.zfunc
source ~/.zsh_aliases
source ~/.zsh_prompt

# History
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

# Extra sources & stuff
