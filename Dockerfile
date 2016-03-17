FROM centos:6

RUN yum -y install \
      openssl-devel \
      rpmdevtools \
      pcre-devel \
      gcc \
      make \
    && yum clean all \
    && rpmdev-setuptree

ADD haproxy.spec /root/rpmbuild/SPECS/haproxy.spec
ADD http://www.haproxy.org/download/1.6/src/haproxy-1.6.4.tar.gz /root/rpmbuild/SOURCES/haproxy-1.6.4.tar.gz
