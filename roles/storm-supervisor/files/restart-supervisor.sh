#!/bin/bash

set -eo pipefail

echo "[storm] stopping storm supervisor"
PID=(jps | grep core | cut -d " " -f 1)
kill -9 $PID

echo "[storm] starting storm supervisor"
/usr/share/storm/bin/storm supervisor
