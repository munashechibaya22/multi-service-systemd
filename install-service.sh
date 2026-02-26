#!/bin/bash
set -euo pipefail

SERVICES=("service1" "service2" "service3")
UNIT_DIR="/etc/systemd/system"

# Idempotent: check if already installed
for svc in "${SERVICES[@]}"; do
    if [[ -f "${UNIT_DIR}/${svc}.service" ]]; then
        echo "Stopping and disabling ${svc}..."
        sudo systemctl stop "${svc}" || true  # Ignore if not running
        sudo systemctl disable "${svc}" || true
        sudo rm "${UNIT_DIR}/${svc}.service"
    fi
done

# Copy units
sudo cp *.service "${UNIT_DIR}/"

# Reload systemd daemon
sudo systemctl daemon-reload

# Enable and start
for svc in "${SERVICES[@]}"; do
    sudo systemctl enable "${svc}"
    sudo systemctl start "${svc}"
    sudo systemctl status "${svc}"  # Show status
done

echo "All services installed and running. Check logs with 'journalctl -u service1' etc."


