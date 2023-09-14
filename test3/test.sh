#!/usr/bin/env bash

set -x
set -e
set -u

systemctl stop fluentd

if pgrep fluetnd; then
    pkill -f fluentd
fi

fluentd --verbose --config ./fluentd.yaml
