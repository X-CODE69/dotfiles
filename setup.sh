#!/bin/bash

TMPDIR=$(mktemp -d)

CURRENT=$PWD

cd $TMPDIR

for script in ~/.dotfiles/scripts/*; do
  bash "$script"
done

cd $CURRENT

rm -rf $TMPDIR

GIT_EDITOR=/usr/bin/vim

git config --global user.name "$GIT_UNAME"
git config --global user.email "$GIT_EMAIL"
