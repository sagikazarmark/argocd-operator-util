# ArgoCD Operator Util

This repo is a fork of the argocd-operator-util tool published by [ArgoCD Operator](https://github.com/argoproj-labs/argocd-operator/).

It contains the following changes:

- Removed storage bucket creation from export (see [argoproj-labs/argocd-operator/issues#279](https://github.com/argoproj-labs/argocd-operator/issues/279))


## Usage

Patch your `ArgoCDExport` resources with the following:

```yaml
apiVersion: argoproj.io/v1alpha1
kind: ArgoCDExport
spec:
  image: ghcr.io/sagikazarmark/argocd-operator-util
  version: v0.3.0
```

**Note:** The `argocd-operator-util` image is versioned with the ArgoCD Operator (not with ArgoCD itself).
