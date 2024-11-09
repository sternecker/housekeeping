#!/usr/bin/env bash

cd ~/
if grep -Fxq "alias vim=\"nvim\"" .bashrc
then
	echo "skipping"
else
	echo "alias vim=\"nvim\"" | tee -a ~/.bashrc
	echo "alias code=\"codium\"" | tee -a ~/.bashrc
	echo "export FCEDIT=\"nvim\"" | tee -a ~/.bashrc
	source ~/.bashrc
fi
cd -
