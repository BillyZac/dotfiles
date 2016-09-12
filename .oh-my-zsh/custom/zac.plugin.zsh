alias hi="echo hulloh."

# Synapse project

# Synapse front-end
alias sf="echo '====================' && echo ENTER THE SYNAPSE!!! && echo '====================' && echo && echo && cd /Users/zacharysmith/dev/synapse/ && atom . && git checkout master && git pull && npm install && npm run build && npm start"

# Synapse back-end
alias sb="cd /Users/zacharysmith/dev/midas-project/mi_rest_hack/ && npm install && node ./app/api.js"

# Fire up Mongo, which back-end needs real bad
alias m="mongod"
