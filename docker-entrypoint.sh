#!/bin/bash

COMMAND=$1

if [[ "${COMMAND}" == "migration" ]]; then
  echo "Migration completed"
else
  supervisord --nodaemon --configuration /etc/supervisord.conf
fi
