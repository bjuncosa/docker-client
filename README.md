What is this image?
===================

This is a simple docker-client image. You can use it to control your docker from within a container.

How to use this image
=====================

The anly thing you need to use it is to attach docker socket to the container on /tmp/docker.sock.

For example:
```
docker run --rm -ti \
  -v /var/run/docker.sock:/tmp/docker.sock:rw \
  bjuncosa/docker-client:latest \
  /bin/bash
```

Once you are inside the container you can run docker as follows:

```
docker -H unix:///tmp/docker.sock ps
```
