kubectl delete deployments backend-feed
kubectl delete deployments backend-user
kubectl delete deployments reverseproxy
kubectl delete deployments frontend

kubectl apply -f feed-deploy.yaml
kubectl apply -f user-deploy.yaml
kubectl apply -f reverseproxy-deploy.yaml
kubectl apply -f frontend-deploy.yaml
