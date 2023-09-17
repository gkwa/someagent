#!/usr/bin/env bash

set -x
set -e
set -u

systemctl stop fluentd

if pgrep fluetnd; then
    pkill -f fluentd
fi

fluentd --verbose --config ./fluentd.yaml &
echo '{"project":"p1","script_name":"s1","message":"m1"}' | /opt/fluent/bin/fluent-cat debug.test
