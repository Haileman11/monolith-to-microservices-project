# Apply env variables and secrets
kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-config.yaml
# Deployments - Double check the Dockerhub image name and version in the deployment files
kubectl apply -f udagram-api-feed-deployment.yaml
kubectl apply -f udagram-api-user-deployment.yaml
kubectl apply -f udagram-frontend-deployment.yaml
kubectl apply -f reverseproxy-deployment.yaml
# Do the same for other three deployment files
# Service
kubectl apply -f udagram-api-feed-service.yaml
kubectl apply -f udagram-api-user-service.yaml
kubectl apply -f udagram-frontend-service.yaml
kubectl apply -f reverseproxy-service.yaml
# Do the same for other three service files
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
