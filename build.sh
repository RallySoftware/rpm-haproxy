#!/bin/bash -ex

docker rm haproxy-spec || true
docker rm haproxy-build || true
docker build -t haproxy-spec .
docker run -it --name haproxy-build haproxy-spec rpmbuild -bb /root/rpmbuild/SPECS/haproxy.spec --define "release 1"
docker cp haproxy-build:/root/rpmbuild/RPMS/x86_64/haproxy-1.6.4-1.el6.x86_64.rpm ./
