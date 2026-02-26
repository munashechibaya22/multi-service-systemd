#!/bin/bash
set -euo pipefail

LOG_FILE="/var/log/service3.log"
echo "$(date) - Service3 started" >> "${LOG_FILE}"

while true; do
    echo "$(date) - Service3 monitoring..." >> "${LOG_FILE}"
    sleep 20
done
