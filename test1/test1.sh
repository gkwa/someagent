#!/usr/bin/env bash

echo '{"project":"p1","script_name":"s1","message":"m1"}' | /opt/fluent/bin/fluent-cat fluentd.test.log
