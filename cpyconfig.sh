#!/bin/bash

# I tried my best. What do you expect from a noob??
# All paths are relative to $HOME
# Add "~/" before paths. Do NOT use "/home/$USER/" before dotfile path

CONFIGS=(
    "~/.config/nvim/"
    "~/.config/hypr/"
    "~/.config/waybar/"
    "~/.config/foot/"
    "~/.bashrc"
    "~/.bash_profile"
)

read -p "Clear and Copy: $(pwd)? (y/n) : " CHECKYES
if [[ "$CHECKYES" != "yes" &&  "$CHECKYES" != "y" ]]; then
    printf "Bye :)\n"
    exit 0
fi

printf "\nClearing $(pwd)\n"
rm -rf $(pwd)/* $(pwd)/.* &>/dev/null
printf "rm -rf $(pwd)/ rm -rf $(pwd)/.*\n"
printf "Done.\n\n"

printf "Copying configs\n"
for CONFIG in "${CONFIGS[@]}"
do
    CDIR=$(dirname $CONFIG)
    BASE=$(basename $CONFIG)
    IDIR=$(eval echo $CDIR)
    ODIR="$(pwd)$(echo /$CDIR | cut -c 3-)"
    mkdir $ODIR &>/dev/null
    printf "rm -rf $ODIR/$BASE\n"
    cp -r $IDIR/$BASE $ODIR/$BASE
    printf "cp -r $IDIR/$BASE $ODIR/$BASE\n"
done
printf "Done.\n"
