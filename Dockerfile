FROM quay.io/argoprojlabs/argocd-operator-util:v0.3.0

USER root

RUN sed -i '/aws s3 mb/d' /usr/local/bin/argocd-operator-util

USER argocd
