---
layout: single
title:  "Deploy with Helm"
sidebar:
  nav: deploy
---
In this option you will deploy k8guard with a Helm chart. Helm reduces the
number of files needed for editing by using templates, and consolidates the
deployment.

### Prerequisites
0. Ensure you have a kubernetes cluster running that you can connect to, with the docker
   images for each microservice (report, action, etc...) published to the
   contianer registry.
1. Install [Helm](https://github.com/kubernetes/helm#install)

* To try k8guard with an older version Kubernetes please refer to [version compatibility matrix](http://0.0.0.0:4000/deploy/versions/).


### Configuration

Edit the values in `k8guard-start-from-here/helm/values.yaml` as appropriate.

### Deployment

From within the k8guard-start-from-here directory:

With the make command:

  ```
  make helm-deploy
  ```

Or directly with helm:
  ```
  helm upgrade -i k8guard-chart helm -f helm/values.yaml
  ```


And to cleanup:

With make:

  ```
  make clean-helm
  ```

Or, with helm:
  ```
  helm delete k8guard-chart
  ```


### Try It in Browser:

Give it a couple minutes, then hit the urls.

If ingress is configured:

1. Discover-api url:
  ```
  http://k8guard.domain.local/discover
  ```
2. Report url:
  ```
  http://k8guard.domain.local/report
  ```

Or, if you're using minikube:

1. Discover-api service url:
  ```
  minikube service k8guard-discover-service
  ```

2. Report service url:
 ```
  minikube service k8guard-report-service
 ```
