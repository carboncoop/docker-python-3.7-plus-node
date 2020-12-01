FROM python:3.7-slim

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get update && apt-get install -y --no-install-recommends curl git make \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
 && apt-get install -y --no-install-recommends nodejs=14.15.1-1nodesource1 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
