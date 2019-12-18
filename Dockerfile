#
# AUTHOR            Frank,H.L.Lai <frank@leadstec.com>
# DOCKER-VERSION    18.06
# Copyright         (C) 2018 Leads Technologies Ltd. All rights reserved.
#
ARG arch=
FROM regimg.com/alpine${arch}:3.8

ARG version=4.0.x
ARG build=dev

# set labels
LABEL version="${version}-${build}" \
    description="Redis docker image for VCubi" \
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
