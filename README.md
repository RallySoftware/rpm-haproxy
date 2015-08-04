# rpm-haproxy
* An RPM spec file to build and install the is HAProxy TCP/HTTP reverse proxy.

## To Build:
* Log into one of our test haproxy boxes
```
sudo su -
```

* Install some prerequisites
```
sudo yum -y install rpmdevtools && rpmdev-setuptree
sudo yum -y install pcre-devel gcc make openssl-devel
```

* Grab the latest version of our spec file
```
wget https://raw.github.com/RallySoftware/rpm-haproxy/master/haproxy.spec -O ~/rpmbuild/SPECS/haproxy.spec
```

* Get the latest verison of haproxy
```
wget http://www.haproxy.org/download/1.5/src/haproxy-1.5.14.tar.gz -O ~/rpmbuild/SOURCES/haproxy-1.5.14.tar.gz

* BUILD!
```
rpmbuild -bb ~/rpmbuild/SPECS/haproxy.spec --define "release 1"
```

## To Publish:
* Follow this [guide](https://github.com/RallySoftware/operations_docs/blob/master/howtos/publish-an-rpm.md)
