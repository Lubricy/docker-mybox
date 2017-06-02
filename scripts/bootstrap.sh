#/bin/sh
ROOT=$(readlink --canonicalize $1)
docker run --rm -it --name tmux -e http_proxy=$http_proxy -e https_proxy=$https_proxy -v $ROOT/home:/root -v $ROOT/bin:/usr/local/bin -v /var/run/docker.sock:/var/run/docker.sock lubricy/tmux
