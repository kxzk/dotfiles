#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
    exit 1
fi

homedir=$1

dotfiledir=${homedir}/dotfiles

files="aliases functions netrc hushlogin tmux.conf vimrc"

echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# Create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory"
    ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done
