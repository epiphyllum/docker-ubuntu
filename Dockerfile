FROM ubuntu:14.04
MAINTAINER hary <94093146@qq.com>

ENV DEBIAN_FRONTEND noninteractive

ADD ["sources.list", "/etc/apt/sources.list" ]

RUN echo "Asia/Shanghai" > /etc/timezone \
 && dpkg-reconfigure -f noninteractive tzdata \
 && echo "192.168.16.136  mirror.tfs.com" >> /etc/hosts \
 && apt-get update \
 && apt-get install -y vim.tiny wget sudo net-tools ca-certificates

