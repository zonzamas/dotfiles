#!/bin/bash

sudo apt-get install emacs24
curl -fsSkL https://raw.github.com/cask/cask/master/go | python
cp -R .emacs.d ~/
cd ~/.emacs.d
~/.cask/bin/cask
cd -
