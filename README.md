# python api
* wrote the api with fastapi
* wrote the required packages in `requirements.txt`
* wrote the Dockerfile and made an image
* making the image :
```
$ docker build . -t arpjoker/api-kuber
```

* for running the code without docker , write the following command :
```
$ uvicorn --host 0.0.0.0 api:app --reload
```
* running with docker :
```
$ docker run --rm -p 80:8000 arpjoker/api-kuber
```
* test with:
```
$ curl localhost/status
```

* everything was done with git and it is pushed on gitlab
* pushed my image to dockerhub for kubernetes , because it gets the image from docker hub
# kubernetes
* installed minikube for local clustering
* started a minikube container and created a cluster and pulled my image
```
$ minikube start --driver=docker
$ kubectl apply -f name.yml
$ kubectl get all   //shows everything , pods , services , deployments and ...
$ kubectl logs <name of pod or container>   //for logs
```
* wrote the Deployment & Service config in yaml file
* wrote the the gitlab ci yaml file but didnt test it because of slow internet (pushing the image with every commit and pulling it inside the cluster)

# problems
* i can't pull the image inside the cluster (probably a network issue with docker)
![78c792acc97e061d555e1c6ebc8b3ff6.png](https://github.com/AlirezaPourchali/task_kuber_api/blob/main/_resources/78c792acc97e061d555e1c6ebc8b3ff6.png)
 



