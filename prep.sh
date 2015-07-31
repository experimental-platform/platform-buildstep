#!/usr/bin/env bash

# this is triggered in herokuish/procfile-load-profile: https://github.com/gliderlabs/herokuish/blob/master/include/procfile.bash#L56
chown -R "$unprivileged_user:$unprivileged_group" /data