# Synapse project

# cd into Synapse front-end
alias s="cd $HOME/work/synapse"

# Synapse front-end
alias sf="echo '====================' && echo ENTER THE SYNAPSE!!! && echo '====================' && echo && echo && cd $HOME/work/synapse/ && git checkout master && git pull && npm install && npm run build && npm start"

# Synapse back-end
alias sb="cd $HOME/work/eolas/ && npm install && node ./index.js"

# Fire up Mongo, which the server needs in the worst way
alias m="mongod"

# git
alias gl="git log --oneline -n 20"
