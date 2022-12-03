#! /usr/bin/env nix-shell
#! nix-shell -i bash -p awscli2 docker

set -ex

docker ps

./build_push.sh $@
