---
layout: single
title:  "Metrics"
sidebar:
  nav: about
---


### Violation Metrics

Discover API generates 19 metrics which are accessible at `/metrics`, and you can hook a monitoring system like Prometheus to collect them and then generate pretty Grafana dashboards.

### Violation Metric Examples:

- The number of all deployments.
- The number of bad deployments.
- The number of all pods.
- The number of bad pods.

for the full list check out the [metrics package](https://github.com/k8guard/k8guard-discover/tree/master/metrics)

### Performance Metrics

It also collects performance metrics for free While K8Guard makes the api calls for it is own logic, it also stores how long those kubernetes api calls to the took, and makes it available as metrics.

### Performance Metrics Examples:

- The number of seconds took to return all images from kubernetes api.
- The number of seconds took to return all deployments from kubernetes api.
