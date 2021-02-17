#Update Container Image
docker-compose up --build -d

#Tag and push image
az acr list --resource-group stashResourceGroup --query "[].{acrLoginServer:loginServer}" --output table
docker tag stash stashRegistry.azurecr.io/stash:v2
docker push stashRegistry.azurecr.io//azure-vote-front:v2

#Deploy the updated application
kubectl get pods
kubectl scale --replicas=3 deployment/stash
kubectl set image deployment stash stash=stashRegistry.azurecr.io/stash:v2
kubectl get service stash