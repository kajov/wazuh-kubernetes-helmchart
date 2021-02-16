#!/usr/bin/env python

import logging
import base64
import argparse
import sys
from kubernetes import config, client

########################## Global variables ##########################

# Analysisd socket address
secret = 'agent-key'
namespace = 'wazuh-agent'

parser = argparse.ArgumentParser()
parser.add_argument("-k", "--key", action="store", dest="key", help="Agent key.")
parser.add_argument("-n", "--node", action="store", dest="node",help="Read from NODE_NAME")
args = parser.parse_args()


########################## Common functions ##########################
def create_secret(new_key):
    node = args.node
    new_secret = ('{}-{}').format(secret, node)
    config.load_incluster_config()
    v1 = client.CoreV1Api()
    metadata = {'name': new_secret, 'namespace': namespace}
    message_bytes = new_key.encode('ascii')
    base64_bytes = base64.b64encode(message_bytes)
    base64_new_key = base64_bytes.decode('ascii')
    data = {'agent.key': base64_new_key}
    print(str(data))
    api_version = 'v1'
    kind = 'Secret'
    body = client.V1Secret(api_version, data , kind, metadata)
    api_response = v1.create_namespaced_secret(namespace, body)

def read_secret(node):
    config.load_incluster_config()
    v1 = client.CoreV1Api()
    secret_name = ('{}-{}').format(secret, node)
    sec = str(v1.read_namespaced_secret(secret_name, namespace).data)
    key = base64.b64decode(sec.strip().split()[1].translate(None, '}\''))
    return key

########################## Main workflow #############################


if __name__ == '__main__':
    try:
        node = args.node
        new_key = args.key
        if new_key:
           create_secret(new_key)
        else:
           key = read_secret(node)
           print(key)
    except Exception as e:
    	print('NOTFOUND')