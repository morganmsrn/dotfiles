# Morgan's ZSH config

This folder contains the file I use to setup ZSH, which I use on all my UNIX machines.

- [ ] Create a script to automate this setup
- [ ] Add git and time completion to the prompt

## Requirements

- oh-my-zsh for plugin management and the prompt

## Usage

The `rc.zsh` and the `prompt.zsh` files are common to all my setups. They should be linked in the home directory like so :

```zsh
ln -s ~/.zshrc [repo]/zsh/rc.zsh
ln -s ~/.zsh_prompt [repo]/zsh/prompt.zsh
```

My aliases are usually different from OS to OS (mainly due to differences in package manager and commands). The needed alias file should be imported like so :

```zsh
ln -s ~/.zsh_aliases [repo]/zsh/aliases_[os].zsh
```

Lastly, some configuration can't really be replicated from machine to machine : environment values, path info, etc... For this, I always create a `~/.zsh_custom` to store that data.
