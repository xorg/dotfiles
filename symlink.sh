#!/bin/bash
## Little script that symlinks config files to home directory.
## Warning! This overwrites existing configurations!

# link all dotfiles to home root
sync_dotfiles() {
  echo "Symlinking dotfiles..."
  for d in ./.*
  do
    if [[ -f $f ]]; then
    ln -sf $f ~/
  fi
  done
}

# link files in config dir separately
sync_config() {
  echo "Symlinking config dir..."
  mkdir -p ~/.config/beets/
  ln -sf ./config/beets/config.yml ~/.config/beets/
}

cleanup() {
  echo "Finished!"
}


sync_dotfiles
sync_config
cleanup
