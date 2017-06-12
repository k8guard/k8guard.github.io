---
layout: single
title:  "Deploy to docker-compose"
sidebar:
  nav: deploy
---



##  Deploy Option 1: Run in docker-compose

1. Config :
	edit `.env` and `env-creds` files. (default values should work fine.)

1. set your kubernetes context to the cluster you want the k8guard to run against.

	```
	kubectl config use-context REPLACE_WITH_YOUR_CONTEXT
	```

1. Bring the core (cassandra, kafka, memcached):

	```
	make up-core
	```
1.  Bring up action, in a new terminal run:

	```
	make up-action
	```

1.  Bring up discover, in a new terminal run:

	```
	make up-discover
	```

1.  To bring up report, in a new terminal run:

	```
	make up-report
	```

1. Open the discover service url in the browser:
    ```
    http://localhost:3000
    ```

1. Open the report service url in the browser:
    ```
    http://localhost:3001
    ```

### Clean up docker-compose

- To clean the docker-compose

	```
	make clean
	```

- Hint alternatively, you can clean individual services:

	`make clean-action`

	`make clean-discover`

	`make clean-report`

	`make clean-core`
