#!/bin/bash
echo "#hello vim" >> ~/.bashrc


cat << EOF >> ~/.venkatbashrc
set show-mode-in-prompt on
set vi-cmd-mode-string "\1\e[2 q\2"
set vi-ins-mode-string "\1\e[6 q\2"
set -o vi
bind '"jk":vi-movement-mode'
EOF

cat << EOF >> ~/.venkatvimrc
inoremap jk <Esc>
vnoremap jk <Esc>
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
EOF

cat << EOF >> ~/.venkatinputrc
set show-mode-in-prompt on
set vi-cmd-mode-string "\1\e[2 q\2"
set vi-ins-mode-string "\1\e[6 q\2"
EOF

source ~/.venkatbashrc
source ~/.venkatvimrc
source ~/.venkatinputrc
