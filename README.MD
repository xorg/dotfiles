dotfiles
========

My dotfiles organized by https://github.com/anishathalye/dotbot

Installation
-----------
Clone this repo into `~/.dotfiles`
```
git clone git@github.com:xorg/dotfiles.git ~/.dotfiles
```

Symlink dotfiles
----------------
Read through the `install.conf.yaml` file and modify the file replacements accordingly. 
By default most files will be overwritten so be careful!

Run the dotbot script.
```  
$ ./install
```

Vim
-----
Install vim plugins
```
$ git submodule update --init
```
