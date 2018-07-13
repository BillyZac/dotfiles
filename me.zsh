# Applications
alias a="atom ."
alias v="vim ."


# ======= PTS project
# PTS cd into project
alias pcd="cd $HOME/work/patronticket/react/public-ticket-site"
# PTS audit the SF fields
alias pa="cd $HOME/work/pm-pts-fields-audit && npm run audit"
# PTS open dev instance of PTS
alias po="open https://sfptdev-ts-162bf45b871-developer-edition.na59.force.com/ticket#/"
# PTS sync the browser!
alias pbs="pcd && browser-sync start --proxy 'https://sfptdev-ts-162bf45b871-developer-edition.na59.force.com/ticket\#/' --files src"
# PTS start
alias pst="PORT=3017 yarn react-scripts-ts start"
# PTS Theme Builder start
alias psttb="PORT=3017 yarn react-scripts start"
# PTS ngrok into locally running app
alias png="~/ngrok http -subdomain=ptapp-wolverine-emma 3017"
# PTS ngrok into locally running theme builder
alias ptng="~/ngrok http --subdomain=pts-theme-builder 3002"
# PTS deploy
alias ptd="node $HOME/work/pts-scripts/deploy.sh"




# Fire up Mongo
alias m="mongod"


# clear the screen, esp useful in tmux, where cmd+k doesn't play nice with panes
alias c="clear"


# Java/Kotlin
alias gw="./gradlew"
