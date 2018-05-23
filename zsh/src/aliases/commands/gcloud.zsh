# G CLOUD
#-----------------------------------------------------
## auth
alias gc-auth-login="gcloud auth application-default login"
alias gc-auth-list="gcloud auth list"

## conf
alias gc-conf-list="gcloud config list"
alias gc-conf-get-value-project="gcloud config get-value project"
alias gc-conf-set-project="gcloud config set project" # arg; project-id
alias gc-conf-set-account="gcloud config set account" # arg; gmail
alias gc-conf-set-compute_zone="gcloud config set compute/zone" # https://cloud.google.com/compute/docs/regions-zones/regions-zones?hl=ja#available

## project
alias gc-projects-list="gcloud projects list"
alias gc-projects-create="gcloud projects create" # project-id --name=
alias gc-projects-delete="gcloud projects delete" # project-id

function gc-projects-locona() {
  gcloud config set project $GCP_ACCOUNT_LOCONA
  gcloud config set project $GCP_PROJECT_LOCONA
}

## container
alias gc-container-cluster-list="gcloud container clusters list"
alias gc-container-cluster-create="gcloud container clusters create" # cluster name
alias gc-container-cluster-delete="gcloud container clusters delete" # cluster name
alias gc-container-cluster-resize="gcloud container clusters resize" # <cluster name> --size=<NUM>
alias gc-container-clouster-get-credentials="gcloud container clusters get-credentials" # <cluster name>

## compute
alias gc-compute-instances-list="gcloud compute instances list"
alias gc-compute-ssh="gcloud compute ssh" # <NODE>

export GCP_PROJECT_ID="$(gcloud config get-value project)"
