#!/bin/bash
## Little script that symlinks config files to home directory.
## Warning! This overwrites existing configurations!

# sync all dotfiles to home root
ln -sf ./.* ~/

# sync files in config dir separately
mkdir ~/.config/beets/
ln -sf ./.config/beets/config.yml ~/.config/beets/
