#!/bin/bash
set -ex

SCRIPT_DIR=$(cd $(dirname $0); pwd)

cp ${SCRIPT_DIR}/.tmux.conf ~/.tmux.conf

cat <<EOF >> ~/.bashrc

source ${SCRIPT_DIR}/.bashrc_private
export \$(cat ${SCRIPT_DIR}/.env | grep -v -e "^$" -e "^ *#" | sed -e "s| *#.*$||" | xargs)
EOF