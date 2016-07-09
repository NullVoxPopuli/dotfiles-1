# Ps1 (idisplays as 'etkirsch: ~/ > ')
PS1='\[\e[38;5;82m\]\u: \[\e[36m\]\W/ > \[\e[0m\]'

function godev {
  cd $GOPATH/src/github.com/etkirsch/$1
}

export NVM_DIR="/home/etkirsch/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

