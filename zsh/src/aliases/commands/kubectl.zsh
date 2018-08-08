# G CLOUD
#-----------------------------------------------------
if (( $+commands[kubectl] )); then
  ZSH_CACHE_DIR=$HOME/.zsh/src/cache
  __KUBECTL_COMPLETION_FILE="${ZSH_CACHE_DIR}/kubectl_completion"

  if [[ ! -f $__KUBECTL_COMPLETION_FILE ]]; then
      kubectl completion zsh >! $__KUBECTL_COMPLETION_FILE
  fi

  [[ -f $__KUBECTL_COMPLETION_FILE ]] && source $__KUBECTL_COMPLETION_FILE

  unset __KUBECTL_COMPLETION_FILE
fi


alias k='kubectl'
alias ka='kubectl attach'
alias kp='kubectl get po'
alias kpw='kubectl get po -w'
alias kpa='kubectl get po -a'
alias kl='kubectl logs'
alias kd='kubectl get deploy'
alias ks='kubectl get svc'

alias k-conf-current-context="kubectl config current-context"
alias k-conf-view="kubectl config view"
alias k-conf-use-context="kubectl config use-context"
alias k-proxy="kubectl proxy"
alias k-namespace-create="kubectl create namespace"
alias k-namespace-list="kubectl get namespaces"
alias k-namespace-delete="kubectl delete namespaces"
alias k-namespace-set-ignis="kubectl config set-context ${KUBE_CONTEXT} --namespace=${KUBE_NAMESPACE_IGNIS}"
alias k-namespace-set="kubectl config set-context ${KUBE_CONTEXT} --namespace "
alias k-namespace-current="kubectl config view | grep namespace"

# deploy
alias k-deploy-w="kubectl get deploy --watch"
alias k-deploy-get="kubectl get deploy"
alias k-deploy-delete="kubectl delete deploy"
alias k-deploy-describe="kubectl describe deploy"

# service
alias k-svc-w="kubectl get svc --watch"
alias k-svc-get="kubectl get svc"
alias k-svc-delete="kubectl delete svc"
alias k-svc-describe="kubectl describe svc"

# po
alias k-po-w="kubectl get po --watch"
alias k-po-get="kubectl get po"
alias k-po-delete="kubectl delete po"
alias k-po-describe="kubectl describe po"

# secret
alias k-secret-get="kubectl get secret"
alias k-secret-delete="kubectl delete secret"
alias k-secret-describe="kubectl describe secret"

# job
alias k-job-get="kubectl get job"
alias k-job-delete="kubectl delete job"
alias k-job-describe="kubectl describe job"

alias k-create="kubectl create"
alias k-logs="kubectl logs"
