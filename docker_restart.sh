#!/bin/bash

modified_time=$(stat $1 | grep Modify |  cut -c 20- | cut -c -8)
current_time=$(date +"%T")

MODIFIED=$(date -u -d "$modified_time" +"%s")
CURRENT=$(date -u -d "$current_time" +"%s")

duration=$(($CURRENT - $MODIFIED))

if [ $duration > 300 ]
then
  # Restart docker
  # docker-compose -f $HOME/opt/cracker_* restart
  echo "Restarted docker."
fi

