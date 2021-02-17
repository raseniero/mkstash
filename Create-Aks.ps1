#Creating Resource Group
az group create --name stashResourceGroup --location westus

#Creating Registry
az acr create --resource-group stashResourceGroup --name stashRegistry --sku Basic

#Login to Registry
az acr login --name stashRegistry

#Tag Registry with the <acrLoginServer>
az acr list --resource-group stashResourceGroup --query "[].{acrLoginServer:loginServer}" --output table
docker tag stash stashRegistry.azurecr.io/stash:v1
docker images

#Push Image to Registry
docker push <acrLoginServer>/stash:v1
az acr repository list --name stashRegistry --output table
az acr repository show-tags --name stashRegistry --repository stash --output table

#Create a Kurbenetes Cluster
az aks create --resource-group stashResourceGroup --name stashAKSCluster --node-count 2 --generate-ssh-keys --attach-acr stashRegistry

#Instal akz cli
az aks install-cli

#Connect to cluster using kubectl
az aks get-credentials --resource-group stashResourceGroup --name stashAKSCluster
kubectl get nodes

#Deploy to aks, assuming you have the manifest file
kubectl apply -f stash-all-in-one-redis.yaml
kubectl get service stash --watch