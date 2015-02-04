#!/bin/bash
## Little script that symlinks config files to home directory.
## Warning! This overwrites existing configurations!

PWD=`pwd`

# link all dotfiles to home root
sync_dotfiles() {
  echo "Symlinking dotfiles..."
  for d in $PWD/.*
  do
    if [[ -f $f ]]; then
    ln -sf $f $HOME/
  fi
  done
}

# link files from config dir separately
sync_config() {
  echo "Symlinking config dir..."
  ln -sf $PWD/beets/ $HOME/.config/beets/
  ln -sf $PWD/colors/ $HOME/.config/beets/

  ln -sf $PWD/oh-my-zsh $HOME/.oh-my-zsh
}

cleanup() {
  # clean up dead symlinks
  for i in $(file ./* | grep broken | cut -d : -f 1); do rm $i; done
  echo "Finished!"
}


sync_dotfiles
sync_config
cleanup
