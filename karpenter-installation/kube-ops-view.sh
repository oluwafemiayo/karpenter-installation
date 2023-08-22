#Kubernetes Operational View - read-only system dashboard for multiple K8s clusters
#Deploy kube-ops-vie to view how karpenter scale kubernetes cluster in response to workload
#Deploy kube-ops-view
helm repo add christianknell https://christianknell.github.io/helm-charts
helm repo update
helm install my-release christianknell/kube-ops-view

#Edit service and change to LoadBalancer or Nodeport
kubectl get svc
kubectl edit svc/my-release-kube-ops-view

#To uninstall the my-release deployment:

helm uninstall my-release