#!/bin/sh
docker stop proxy
while docker run --net=host --privileged klabs/forgetproxy stop; do echo abc; done
