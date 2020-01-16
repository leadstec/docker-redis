#
# AUTHOR            Frank,H.L.Lai <frank@leadstec.com>
# DOCKER-VERSION    19.03
# Copyright         (C) 2020 LEADSTEC Solutions. All rights reserved.
#
FROM leadstec/alpine:3.10.3
ARG version=5.0.x
ARG build=dev

# set labels
LABEL version="${version}-${build}" \
    description="Redis image for VCubi" \
    maintainer="Frank,H.L.Lai <frank@leadstec.com>"

# set environment variables
ENV REDIS_VERSION=${version} \
    REDIS_LOG_DIR="${LOG_DIR}/redis"

# Update packages
RUN apk --update add redis && \
    rm /var/cache/apk/*

# add install/startup scripts
COPY scripts /scripts
RUN bash /scripts/setup/install
RUN rm -fr /scripts/setup

VOLUME ${DB_DIR}
EXPOSE 6379
