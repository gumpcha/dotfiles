#!/bin/bash

for file in ~/dotfiles/.*; do
	[[ -d $file ]] && continue;
	ln -s $file ~/`basename $file`
done

# XXX ~/Dropbox/PrivateConfig/.config
