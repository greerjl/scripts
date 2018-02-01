Scripts for various use cases
=========

Bash
------------

- docker_restart.sh
  - Can be used for other use cases besides a docker container
  - Checks the modifed time, or most recent time the file was edited, and compares to current time. 
  - If the time difference is more that 5 minutes, or 300 seconds, then it will call `docker-compose restart -f $PATH`
