FROM quay.io/argoprojlabs/argocd-operator-util:v0.6.0

USER root

# Remove S3 bucket creation
RUN sed -i '/aws s3 mb/d' /usr/local/bin/argocd-operator-util
RUN sed -i '/aws s3api put-public-access-block/d' /usr/local/bin/argocd-operator-util

# Remove Azure bucket creation
RUN sed -i '/az storage container create/d' /usr/local/bin/argocd-operator-util


# Remove GCS bucket creation
RUN sed -i '/gsutil mb/d' /usr/local/bin/argocd-operator-util

USER argocd
