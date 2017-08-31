---
layout: single
title:  "Configurations"
sidebar:
  nav: deploy
---

## Configuration

K8Guard comes with tons of configurations, currently the documentation for it is in comments of these files: (better docs will come someday)

* [.env-template](https://github.com/k8guard/k8guard-start-from-here/blob/master/.env-template)
* [.env-creds-template](https://github.com/k8guard/k8guard-start-from-here/blob/master/.env-creds-template)


Some of the configuration values (as noted in the `.env-template` file) have a rule format that can used to filter on namespaces, entity types, entity names, and values, in addition to excluding.  Examples:

Configuration setting | Configuration value | Description
-----|-----|-----
`K8GUARD_IGNORED_VIOLATIONS` | `mynamespace:*:*:PRIVILEGED` | will ignore any PRIVILEGED violations for all types within `mynamespace`.
`K8GUARD_IGNORED_VIOLATIONS` | `!mynamespace:daemonset:*:PRIVILEGED` | will ignore any PRIVILEGED violations for all daemonsets in any namespace but `mynamespace`.
`K8GUARD_IGNORED_VIOLATIONS` | `*:daemonset:kube2iam:PRIVILEGED` | will ignore any PRIVILEGED violations only for daemonsets named `kube2iam` across all namespaces.
`K8GUARD_REQUIRED_LABELS` | `!kube-system:pod:*:productcode` | ensures that all pods in all namespaces except `kube-system` have the label `productcode`.
`K8GUARD_REQUIRED_ENTITIES` | `!kube-system:resourcequota:myquota:*` | ensures that all namespaces except `kube-system` have a resourcequota named `myquota`. 