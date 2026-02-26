# multi-service-systemd

# Multi-Service Startup with Systemd Units

Portfolio Project #3: Bash installer for systemd-managed multi-service app simulation.

## Features
- 3 dummy services with dependencies
- Idempotent installer script
- Auto-restart on failure
- Boot-enabled
- Journalctl logging

## Concepts
- Systemd units ([Unit], [Service], [Install])
- Dependencies (After=)
- Daemons & service management
- Idempotency in installers

## Usage
1. Clone repo
2. `./install-services.sh`
3. Verify: `systemctl status service1`
4. Logs: `journalctl -u service1 -f`
5. Stop: `sudo systemctl stop service1`

## Trade-offs
- Simple loops for sim; real: replace with Nginx/Postgres/etc.
- No env secrets yet (add later).

Next: Integrate with Docker in Phase 2.
