FROM docker-base

MAINTAINER James Eckersall <james.eckersall@gmail.com>

RUN yum install -y squid httpd-tools

COPY supervisord.d/ /etc/supervisord.d/
COPY hooks/ /hooks/
COPY squid.conf /etc/squid/

ENV SQUID_USERNAME=squid \
    SQUID_PASSWORD=squid

EXPOSE 3128
