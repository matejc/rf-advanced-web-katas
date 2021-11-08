#!/usr/bin/env bash
set -e

chown -R user:user /home/user/.config

chmod -R o+rw /home/user/source

mkdir -p /home/user/logs
chmod -R o+rw /home/user/logs

mkdir -p /usr/share/novnc/output
chmod -R o+rw /usr/share/novnc/output

trap 'kill $(cat /tmp/supervisord.pid)' EXIT
trap 'exit 0' SIGINT SIGTERM

exec supervisord --nodaemon --pidfile=/tmp/supervisord.pid --configuration=/etc/supervisord.conf
