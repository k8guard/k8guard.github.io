---
layout: single
title:  "Deploy to Minikube"
sidebar:
  nav: deploy
---


In this option you will test k8guard against a minikube context and will also deploy it to minikube. (safest way for develpoment)

### Setup and start minikube
1. Make sure you install minikube v0.18.0. There is an [issue](https://github.com/kubernetes/minikube/issues/1521) with latest version of minikube. don't install latest.

	```
	curl -Lo minikube-binary https://storage.googleapis.com/minikube/releases/v0.18.0/minikube-darwin-amd64 && chmod +x minikube-binary && sudo mv minikube-binary /usr/local/bin/minikube
	```

1. ```minikube start --memory 4096 --kubernetes-version v1.5.1```

### Deploy Minikube

1. ```eval $(minikube docker-env)```
1. ```make deploy-minikube```


### Get the endpoint URLS

Give it a couple minutes. and hit the service urls:

1. Get discover service url: ``` minikube service k8guard-discover-service ```

- Get report service url:
 ``` minikube service k8guard-report-service ```
