---
layout: single
title:  "Deploy to docker-compose"
sidebar:
  nav: deploy
---



##  Deploy Option 1: Run in docker-compose using Kafka, Zookeeper, Memcached and Cassandra

1. Config:
	edit `.env` and `env-creds` files. (default values should work fine)

1. Set your kubernetes context to the cluster you want k8guard to run against.

	```
	kubectl config use-context REPLACE_WITH_YOUR_CONTEXT
	```

1. Bring up the core services (cassandra, kafka, memcached):

	```
	make up-core-compose
	```
1.  Bring up action, in a new terminal run:

	```
	make up-action-compose
	```

1.  Bring up discover, in a new terminal run:

	```
	make up-discover-compose
	```

1.  To bring up report, in a new terminal run:

	```
	make up-report-compose
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
	make clean-compose
	```

- Hint alternatively, you can clean individual services:

	`make clean-action-compose`

	`make clean-discover-compose`

	`make clean-report-compose`

	`make clean-core-compose`


##  Deploy Option 2: Alternatively, run in docker-compose with lighter weight dependencies of Redis and Cassandra

1. Config:
	edit `.env` and `env-creds` files. (default values should work fine)

1. Set your kubernetes context to the cluster you want k8guard to run against.

	```
	kubectl config use-context REPLACE_WITH_YOUR_CONTEXT
	```

1. Bring up the core services (cassandra, kafka, memcached):

	```
	make up-core-compose-lightweight
	```
1.  Bring up action, in a new terminal run:

	```
	make up-action-compose-lightweight
	```

1.  Bring up discover, in a new terminal run:

	```
	make up-discover-compose-lightweight
	```

1.  To bring up report, in a new terminal run:

	```
	make up-report-compose-lightweight
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
	make clean-compose-lightweight
	```

- Hint alternatively, you can clean individual services:

	`make clean-action-compose-lightweight`

	`make clean-discover-compose-lightweight`

	`make clean-report-compose-lightweight`

	`make clean-core-compose-lightweight`
