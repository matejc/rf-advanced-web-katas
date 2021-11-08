#!/usr/bin/env bash
set -e

PATH="/home/user/venv/bin:$PATH"
ROBOT_OUTPUT="${ROBOT_OUTPUT:-/usr/share/novnc/output}"
ROBOT_ROOT_PATH="${ROBOT_ROOT_PATH:-/home/user/source}"

# This will take down the whole process tree on script exit
trap "kill 0" EXIT
trap "exit" INT TERM

while true; do
    fswatch --event=Updated --one-event $ROBOT_ROOT_PATH/**/*robot >/dev/null
    robot -d $ROBOT_OUTPUT $ROBOT_ROOT_PATH/tests || true
done
