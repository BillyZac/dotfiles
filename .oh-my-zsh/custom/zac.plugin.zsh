# Synapse project

# cd into Synapse front-end
alias s="cd $HOME/work/synapse"

# Synapse front-end
alias sf="echo '====================' && echo ENTER THE SYNAPSE!!! && echo '====================' && echo && echo && cd $HOME/work/synapse/ && atom . && git checkout master && git pull && npm install && npm run build && npm start"

# Synapse back-end
alias sb="cd $HOME/work/mi_rest_hack/ && npm install && node ./app/api.js"

# Fire up Mongo, which back-end needs real bad
alias m="mongod"

# git
alias gl="git log --oneline -n 10"
