#!/bin/bash
set -e

if [[ $@ == *crond* ]] && [ -z "$CRON_SCHEDULE" ]; then
    # echo "ERROR: \$CRON_SCHEDULE not set!"
    # exit 1
    echo "\$CRON_SCHEDULE not set, running one time and exiting."
    python3 -u /backup/backup.py
    exit 0
fi

# Write cron schedule
echo "$CRON_SCHEDULE python3 -u /backup/backup.py > /dev/stdout" > /var/spool/cron/crontabs/root

exec "$@"
