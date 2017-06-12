---
layout: single
title:  "Build the Project"
sidebar:
  nav: deploy
---

Remember to build the project before deploying.
To build all run this in `k8guard-start-from-here` folder:

```
	make build-all
```

- Hint: To save time. you can build each micro-service individually if you don't wanna build all of them:

	- ```make build-discover```

	- ``` make build-action```

	- ``` make build-report```
