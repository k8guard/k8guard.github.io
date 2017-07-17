.DEFAULT_GOAL := help
.PHONY: help

install:
	bundle update

up:
	bundle exec jekyll serve -w -H 0.0.0.0 -P 4000


sup: install up

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
