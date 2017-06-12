---
layout: single
title:  ""
sidebar:
  nav: about
---

### What is K8Guard?


K8Guard is an auditing system for kubernetes clusters.
It monitors different entities on your cluster for possible violations.

K8Guard notifies the violators and then takes action on them. It also provides metrics and dashboards about violations in the cluster through Prometheus.  

### How to Pronounce It?

Like Kate Guard - the guardian angel for your Kubernetes clusters.


### Why?

If you have large size Kuberentes clusters with a lot of tenants. and you need security, efficiency, availability and stability.


### What Kind of Entities Does It Monitor?

Any entities which deployed to your Kubernetes cluster such as Deployments, Pods, Jobs/CronJobs, Ingresses and namespaces.

### What Kind of Actions Does It Take?

- Notifies the namespace owner (email, hipchat, ...).
- After X amount of notifications, it will do a hard action such as:
    - Scale bad deployments down to zero.
    - Suspend bad jobs.
    - Delete bad ingress

Note that there is a safe mode - which only notifies and does not do hard actions.
