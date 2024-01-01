# zsh setup
export EDITOR=nvim

# oh-my-zsh setup
export ZSH="~/.oh-my-zsh" # Install path
plugins=(git npm nvm sudo z zsh-autosuggestions)
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Load completion & config
fpath+=~/.zfunc
source ~/.zsh_aliases # Link from aliases_[os].zsh
source ~/.zsh_prompt  # Link from prompt.zsh
source ~/.zsh_custom  # Extra file for custom info depending on the machine, os...

# History
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
