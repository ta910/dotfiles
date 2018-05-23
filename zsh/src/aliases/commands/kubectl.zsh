# G CLOUD
#-----------------------------------------------------

alias kc="kubectl"
alias k-conf-current-context="kubectl config current-context"
alias k-conf-view="kubectl config view"
alias k-conf-use-context="kubectl config use-context"
alias k-proxy="kubectl proxy"
alias k-namespace-create="kubectl create namespace"
alias k-namespace-list="kubectl get namespaces"
alias k-namespace-set-ignis="kubectl config set-context ${KUBE_CONTEXT} --namespace=${KUBE_NAMESPACE_IGNIS}"
alias k-namespace-set="kubectl config set-context ${KUBE_CONTEXT} --namespace "
alias k-namespace-current="kubectl config view | grep namespace"

alias k-deploy-get="kubectl get deploy"
alias k-deploy-delete="kubectl delete deploy"
alias k-deploy-describe="kubectl describe deploy"

alias k-svc-get="kubectl get svc"
alias k-svc-delete="kubectl delete svc"
alias k-svc-describe="kubectl describe svc"


alias k-po-get="kubectl get po"
alias k-po-delete="kubectl delete po"
alias k-po-describe="kubectl describe po"

alias k-create="kubectl create"
alias k-logs="kubectl logs"
