---
layout: single
title:  "First Time Developer Setup"
sidebar:
  nav: deploy
---



* Install Go and Setup your setup your `$GOPATH`.

* Run the following to clone the repos:

	```
	mkdir -p $GOPATH/src/github.com/k8guard/
	cd $GOPATH/src/github.com/k8guard/
	git clone https://github.com/k8guard/k8guard-start-from-here.git
    cd $GOPATH/src/github.com/k8guard/k8guard-start-from-here
	```

* Run developer-setup:

	```
	make developer-setup
	```


	* Hint 1: The above steps will clone other repos (k8guardlibs, k8guard-discover, k8guard-action, k8guard-report), install golang tools (glide, goimport) for you, and will also setup the pre-commit hooks. Note: It uses brew to install glide for only for mac users currently.


	* Hint 2: `Makefile` is your friend and it is better than this documentation. Take a look at the Makefile in the root of this folder, to understand all the commands you need.

  * Hint 3: `k8guard-start-from-here` folder should be your working directory when running the commands.
