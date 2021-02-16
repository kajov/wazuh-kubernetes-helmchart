#!/bin/bash

# Copyright (C) 2015-2019, Wazuh Inc.
# Created by Wazuh, Inc. .
# This program is a free software; you can redistribute it and/or modify it under the terms of GPLv2

WA_KEY=`python /scripts/manage_agent_key.py -n $NODE_NAME`

#Setting up Wazuh Agent
if [ $WA_KEY == 'NOTFOUND' ]; then
    /var/ossec/bin/agent-auth -d -m ${W_MANAGER} -A $NODE_NAME
    NEW_WA_KEY=$(printf "`cat /var/ossec/etc/client.keys`" | base64 | tr -d \\n)
    python /scripts/manage_agent_key.py -k ${NEW_WA_KEY} -n $NODE_NAME
else
    yes | /var/ossec/bin/manage_agents -i $WA_KEY
fi

service wazuh-agent restart
sleep infinity