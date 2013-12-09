cat << EOF >> ~/.bashrc
export HISTSIZE=100000000
export HISTFILESIZE=100000000
export HISTIGNORE='&:ls:[bf]g:exit:[ \t]*'
export HISTCONTROL=ignoredumps
EOF

