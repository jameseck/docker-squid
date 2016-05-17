#!/bin/sh

docker rm -f squid
docker run --name squid -it -d -p 192.168.1.42:3128:3128 squid
