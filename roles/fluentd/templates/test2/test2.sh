#!/usr/bin/env bash

set -x
set -e
set -u

systemctl stop fluentd

if pgrep fluetnd; then
    pkill -f fluentd
fi

/usr/sbin/fluent-gem install fluent-plugin-detect-exceptions
fluentd --verbose --config ./fluentd.conf
