#!/bin/bash
cd "$(dirname "$0")"
echo "Stop containers"
docker-compose stop

read -p "Do you want to remove the config & database? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

echo "Remove containers"
docker-compose down --volumes --remove-orphans  --rmi all
