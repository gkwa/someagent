#!/usr/bin/env bash

pkill -f fluentd
fluentd --verbose --config ./fluentd.conf
