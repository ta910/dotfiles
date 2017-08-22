## 3shake.zsh
# 3shake.zsh is customizing cd to 3shake's repo

## excluding go repositories
GITHUB="$HOME/w/github.com"
SHAKE="$GITHUB/3-shake"
alias sf="$SHAKE/reckoner-frontend"
alias slog="$SHAKE/reckoner-loginsight-aggr"
alias sag="$SHAKE/reckoner-aggregator"
alias sin="$SHAKE/reckoner-infra"
alias sissue="$SHAKE/reckoner-issue"
alias sinld="$SHAKE/reckoner-infra/local/docker"
alias sinlddmp="$SHAKE/reckoner-infra/local/docker/scripts/reckoner-dmp-api"

## Go Respositories
#---------------------------------
GOPUS3SHAKE="$HOME/gopus/src/github.com/3-shake"
alias shake="$GOPUS3SHAKE"
alias sapi="$GOPUS3SHAKE/reckoner-api"
alias scol="$GOPUS3SHAKE/reckoner-collector"
alias sdmp="$GOPUS3SHAKE/reckoner-dmp-api"
alias smok="$GOPUS3SHAKE/mokuru-api"
alias sweb="$GOPUS3SHAKE/reckoner-web-api"
alias spresto="$GOPUS3SHAKE/reckoner-presto"
alias swor="$GOPUS3SHAKE/reckoner-worker"
