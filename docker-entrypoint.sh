#!/bin/bash

COMMAND=$1

if [[ -z $COMMAND ]]; then
  echo "Please specify which command to run ('app' or 'migration')"
  exit 1
fi

if [[ "${COMMAND}" == "migration" ]]; then
  echo "Migration completed"
else
  supervisord --nodaemon --configuration /etc/supervisord.conf
fi
