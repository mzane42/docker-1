#!/bin/bash

set -e
cd /opt/teamspeak/
export LD_LIBRARY_PATH=".:$LD_LIBRARY_PATH"
/opt/teamspeak/ts3server createinifile=1
/opt/teamspeak/ts3server_minimal_runscript.sh
cat <> /opt/teamspeak/ts3server.ini 1>&2 &
exec "$@"