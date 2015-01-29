#!/bin/bash
## Little script that symlinks config files to home directory.
## Warning! This overwrites existing configurations!

PWD=`pwd`

# link all dotfiles to home root
sync_dotfiles() {
  echo "Symlinking dotfiles..."
  for d in ./.*
  do
    if [[ -f $f ]]; then
    ln -sf $f $HOME/
  fi
  done
}

# link files from config dir separately
sync_config() {
  echo "Symlinking config dir..."
  mkdir -p ~/.config/beets/
  ln -sf $PWD/beets/config.yml $HOME/.config/beets/

  mkdir -p ~/.config/zsh/
  ln -sf $PWD/config/zsh/antigen.zsh $HOME/.config/zsh/

  ln -sf $PWD/.oh-my-zsh $HOME/
}

cleanup() {
  # clean up dead symlinks
  for i in $(file ./* | grep broken | cut -d : -f 1); do rm $i; done
  echo "Finished!"
}


sync_dotfiles
sync_config
cleanup
