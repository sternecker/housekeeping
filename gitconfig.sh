#!/usr/bin/env bash

git config --global user.email "sternecker@gmail.com"
git config --global user.name "Geoff Sternecker"
git config --global init.defaultBranch main
git config --global core.editor nvim
git config --global pull.rebase true
git config --globa alias.acp "!f() { git add . && git commit -m \"$1\" && git push; }; f"
