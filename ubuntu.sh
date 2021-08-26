# !/bin/bash

printf "Copying useful programs...";
cp -r .local ~/.local
printf "[OK]\n";

printf "Copying bash configuration...";
cp .bashrc ~/.bashrc
printf "[OK]\n";

printf "Copying other programs configuration files...";
cp -r .config ~/.config
printf "[OK]";
