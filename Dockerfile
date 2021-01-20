#
# Author            Frank,H.L.Lai <frank@leadstec.com>
# Docker Version    20.10
# Website           https://www.leadstec.com
# Copyright         (C) 2021 LEADSTEC Systems. All rights reserved.
#
FROM leadstec/alpine:latest

# set labels
LABEL description="Redis image for VCubi platform" \
    maintainer="Frank,H.L.Lai <frank@leadstec.com>"

# set environment variables
ENV REDIS_LOG_DIR="${LOG_DIR}/redis"

# Update packages
RUN apk --update add redis && \
    rm /var/cache/apk/*

# add install/startup scripts
COPY scripts /scripts
RUN bash /scripts/setup/install
RUN rm -fr /scripts/setup

VOLUME ${DB_DIR}
EXPOSE 6379
