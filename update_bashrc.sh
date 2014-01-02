cat << EOF >> ~/.bashrc
export HISTSIZE=100000000
export HISTFILESIZE=100000000
export HISTIGNORE='&:ls:[bf]g:exit:[ ]*'
export HISTCONTROL=ignoredumps
EOF

