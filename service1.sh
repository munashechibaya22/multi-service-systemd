#!/bin/bash
set -eou pipefail

LOG_FILE="/var/log/service1.log"
echo "$(date) - Service Started" >> "${LOG_FILE}"

while true; do
	echo "$(date) - Service running..." >> "${LOG_FILE}"
	sleep 10
done
