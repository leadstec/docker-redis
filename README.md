# Redis image for VCubi Platform

![Version](https://img.shields.io/badge/Redis-5.0.9-blue)
![Arch](https://img.shields.io/badge/Arch-amd64,_arm64-brightgreen)
![Workflow](https://github.com/leadstec/docker-redis/workflows/ci/badge.svg)

The project contains Redis image for VCubi platform, based on LCS container management daemon.

Image on [DockerHub](https://hub.docker.com/r/leadstec/redis)

LEADSTEC: [Official website](https://www.leadstec.com)

## How to Use
    # Pull image
    docker pull leadstec/redis:latest

    # Build image
    docker-compose build

    # Image Structure Test
    container-structure-test test --image leadstec/redis:tag --config tests/redis.yml

## LCS Schema & ENV

| ENV Variable              | Description               | Default | Accept Values |
|---------------------------|---------------------------|---------|---------------|
| REDIS_RDB_COMPRESSION     |                           | yes  |     |
| REDIS_MAX_CLIENTS         |                           | 5000 |               |
| REDIS_PROTECTED_MODE      |                           | no  |               |
| REDIS_PORT                |                           | 6379  |               |
| REDIS_STREAM_NODE_MAX_BYTES |                         | 4096 |       |
| REDIS_STREAM_NODE_MAX_ENTRIES |                       | 100   |               |


