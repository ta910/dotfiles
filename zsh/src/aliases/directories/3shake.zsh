## 3shake.zsh
# 3shake.zsh is customizing cd to 3shake's repo

## excluding go repositories
GITHUB="$HOME/w/github.com"
SHAKE="$GITHUB/3-shake"
alias -g sf="$SHAKE/reckoner-frontend"
alias -g slog="$SHAKE/reckoner-loginsight-aggr"
alias -g sag="$SHAKE/reckoner-aggregator"
alias -g sin="$SHAKE/reckoner-infra"
alias -g sissue="$SHAKE/reckoner-issue"
alias -g sinld="$SHAKE/reckoner-infra/local/docker"
alias -g sinlddmp="$SHAKE/reckoner-infra/local/docker/scripts/reckoner-dmp-api"

## Go Respositories
#---------------------------------
GOPUS3SHAKE="$HOME/gopus/src/github.com/3-shake"
alias -g shake="$GOPUS3SHAKE"
alias -g sapi="$GOPUS3SHAKE/reckoner-api"
alias -g scol="$GOPUS3SHAKE/reckoner-collector"
alias -g sdmp="$GOPUS3SHAKE/reckoner-dmp-api"
alias -g smok="$GOPUS3SHAKE/mokuru-api"
alias -g sweb="$GOPUS3SHAKE/reckoner-web-api"
alias -g spresto="$GOPUS3SHAKE/reckoner-presto"
alias -g swor="$GOPUS3SHAKE/reckoner-worker"
