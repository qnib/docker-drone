#!/bin/bash

########
## Check for /run/secrets and expose them as ENV variables
for sec in $(ls /run/secrets/);do
    KEY=$(echo ${sec} |tr '[:lower:]' '[:upper:]' |sed -e 's/-/_/g')
    declare "$KEY=$(cat /run/secrets/${sec})"
done
