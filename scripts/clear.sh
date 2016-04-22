#!/bin/bash
docker-compose down && docker images|grep -vE 'ubuntu|debian|IMAGE ID|frodenas/mongodb'|awk '{print $3}'|xargs docker rmi -f
