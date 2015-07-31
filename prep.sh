#!/usr/bin/env bash

echo -e "\n\n\nDEBUG-XXX: DUMPING VARIABLES\n\n"
set
echo -e "\n\n\nDEBUG-XXX: STARTING SOURCED COMMANDS\n\n"
chown -R "$unprivileged_user:$unprivileged_group" /data