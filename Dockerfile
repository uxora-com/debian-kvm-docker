FROM debian:bullseye-slim

ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends qemu-kvm qemu-utils bridge-utils dnsmasq uml-utilities iptables wget net-tools procps iproute2 ethtool fdisk && \
  apt-get autoclean && \
  apt-get autoremove && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT /bin/bash
