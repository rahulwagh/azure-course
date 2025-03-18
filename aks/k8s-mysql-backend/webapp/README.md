```bash
docker build --platform linux/amd64 -t python-webapp .
```

```bash 
# mysql console 
kubectl run -it --rm --image=mysql:5.6 --restart=Never mysql-client -- mysql -h mysql -ppassword 
```

```bash 
select user();

CREATE DATABASE devprojdb;

## Connection URL 
mysql.default.svc.cluster.local
```

```bash 
# Docker build command 
# Azure Login
az login

# Steps 1
docker build --platform linux/amd64 -t python-webapp .

# Step 2 - tag image with ACR
docker tag python-webapp europenorthdemoacr.azurecr.io/apps/python-webapp

# Azure docke container registry login 
az acr login --name europenorthdemoacr

docker push europenorthdemoacr.azurecr.io/apps/python-webapp 
```

```bash
#delete the deployment 
kubectl delete -f webapp-deployment.yaml

kubectl delete -f mysql-db-pv.yaml 
```