#!/bin/bash
set -euo pipefail

LOG_FILE="/var/log/service2.log"

echo "$(date) - Service2 Started " >> "${LOG_FILE}"

while true; do
	echo "$(date) Service2 logging..." >> "${LOG_FILE}"
	sleep 15
done
