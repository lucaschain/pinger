#!/bin/bash

COMMAND=$1

if [[ "${COMMAND}" == "migrate" ]]; then
  echo "Migration completed"
else
  supervisord --nodaemon --configuration /etc/supervisord.conf
fi
