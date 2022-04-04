# ArgoCD Operator Util

This repo is a fork of the argocd-operator-util tool published by [ArgoCD Operator](https://github.com/argoproj-labs/argocd-operator/).

It contains the following changes:

- Removed `aws s3 mb` from pushing ArgoCD exports to S3


## Usage

Patch your `ArgoCDExport` resources with the following:

```yaml
apiVersion: argoproj.io/v1alpha1
kind: ArgoCDExport
spec:
  image: ghcr.io/sagikazarmark/argocd-operator-util
  version: v0.2.1
```
