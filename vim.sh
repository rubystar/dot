#!/bin/bash
echo "#hello vim" >> ~/.bashrc

echo "Setting vim in bashrc"
cat << EOF >> ~/.bashrc
set show-mode-in-prompt on
set vi-cmd-mode-string "\1\e[2 q\2"
set vi-ins-mode-string "\1\e[6 q\2"
set -o vi
bind '"jk":vi-movement-mode'
EOF

echo "Setting vim in vimrc"
cat << EOF >> ~/.vimrc
inoremap jk <Esc>
vnoremap jk <Esc>
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
EOF

echo "Setting vim inputrc"
cat << EOF >> ~/.inputrc
set show-mode-in-prompt on
set vi-cmd-mode-string "\1\e[2 q\2"
set vi-ins-mode-string "\1\e[6 q\2"
EOF

source ~/.bashrc
source ~/.vimrc
source ~/.inputrc
