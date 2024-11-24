#!/bin/bash

set -ex

SCRIPT_DIR=$(cd $(dirname $0); pwd)

mkdir -p $HOME/.docker
cat <<EOF > $HOME/.docker/config.json
{}
EOF