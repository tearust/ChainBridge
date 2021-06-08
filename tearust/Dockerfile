# Copyright 2020 ChainSafe Systems
# SPDX-License-Identifier: LGPL-3.0-only

# # final stage
FROM ubuntu:20.10
RUN apt-get -y update && apt-get -y upgrade && apt-get install ca-certificates wget -y
RUN wget -P /usr/local/bin/ https://chainbridge.ams3.digitaloceanspaces.com/subkey-rc6 \
  && mv /usr/local/bin/subkey-rc6 /usr/local/bin/subkey \
  && chmod +x /usr/local/bin/subkey
RUN subkey --version

COPY ./build/chainbridge ./bridge
RUN chmod +x ./bridge
