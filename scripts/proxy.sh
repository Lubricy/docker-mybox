#!/bin/sh
docker run --rm -itd --name proxy --net=host --privileged -e http_proxy=$http_proxy -e https_proxy=$https_proxy klabs/forgetproxy

