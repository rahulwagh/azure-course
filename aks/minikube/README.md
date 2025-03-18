## Step 1 : Install minikube
```bash
brew install minikube
```

## Step 2 : Start minikube
```bash
minikube start
```

## Step 3: User minikube context
```bash
kubectl config use-context minikube
```

## Step 4 : Build Docker image 
```
#arm
docker build --platform linux/amd64 -t python-rest-api-flask-app .

#x86
docker build -t python-rest-api-flask-app .  
```

## Step 5 : List docker images
```
docker image ls
```

## Step 6 : Run Docker image
``` 
docker run python-rest-api-flask-app -p 127.0.0.1:8888:8888/tcp

docker run -p 127.0.0.1:8888:8888/tcp python-rest-api-flask-app 

```

## Step 7 : Push docker image to docker hub 

```
docker login 

docker build -t python-rest-api-flask-app .

docker image tag python-rest-api-flask-app:latest rahulwagh17/python-rest-api-flask-app:latest

docker push rahulwagh17/python-rest-api-flask-app:latest 
```

## Step 8 : Enable minikube dashboard 
```
 minikube dashboard --url 
```