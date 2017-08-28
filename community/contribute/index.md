---
layout: single
title:  "Contribute"
sidebar:
  nav: community
---




### Test your changes in minikube

Make sure to build and deploy everything to minikube after any changes.

### Commit the glide.lock

If you make a change to glide.yaml, please generate a glide.lock and commit the glide.lock also. this is to ensure the exact dependencies for the build.

```
rm glide.lock
glide update
```


### How to contirbute to the k8guardlibs ?

contributing to k8guardlibs is a bit different than other repos, because all other micro-services depend on k8guardlibs.

if you make a change on k8guardlibs, you would need to update the glide.yaml and glide.lock in other repos (k8guard-discover, k8guard-action, k8guard-report) to use the new k8guardlibs' commit SHA.

Here is the recommended way:
* Make a fork of k8guardlibs and commit your changes to your fork
* Change the glide yaml in your fork of main micro-services (k8guard-discover, k8guard-action, k8guard-report) to use the new k8guardlibs in your fork.

for example in k8guard-discover change
```
- package: github.com/k8guard/k8guardlibs
  repo: https://github.com/k8guard/k8guardlibs.git
  version: 778e595d7eda2e64e5fc84ac3c091deecaef4743
  vcs: git
```
to

```
- package: github.com/k8guard/k8guardlibs
  repo: https://github.com/YOURUSERNAME/k8guardlibs.git
  version: CHANGE_TO_COMMIT_SHA_OF_YOUR_FORK
  vcs: git
```

do a gide upadate

test the changes in minikube and then make a PR on libs.
when the PR on libs is merged, change the glide yaml on all the microservices to use the new libs commit sha.
