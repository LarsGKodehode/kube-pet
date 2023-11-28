#!/bin/bash

robot_secret="./.secrets/robot-testing-private-docker.json"
repository_host="https://container.registry.local"

username=$(cat $robot_secret | jq -r .name)
password=$(cat $robot_secret | jq -r .secret)
echo "$password" | docker login $repository_host --username "$username" --password-stdin
