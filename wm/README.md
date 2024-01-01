# Morgan's Tiling Windows config

These are the files I use to set up a tiling windows manager on MacOS. I use [yabai] and [skhd] for the shortkey management.

## Usage

Each app contains a simple rc file that should be placed in a respective folder like so :

``` zsh
ln -s [repo]/wm/yabairc ~/.yabairc
ln -s [repo]/wm/skhdrc ~/.skhdrc
```

Once setup, you can start using both of these with :

``` zsh
yabai --start-service
```
