# Wazuh Kubernetes Helm Chart

[![Slack](https://img.shields.io/badge/slack-join-blue.svg)](https://wazuh.com/community/join-us-on-slack/)
[![Email](https://img.shields.io/badge/email-join-blue.svg)](https://groups.google.com/forum/#!forum/wazuh)
[![Documentation](https://img.shields.io/badge/docs-view-green.svg)](https://documentation.wazuh.com)
[![Documentation](https://img.shields.io/badge/web-view-green.svg)](https://wazuh.com)

Deploy a Wazuh cluster using Helm quickly to Kubernetes.

## Documentation

The [instructions.md](instructions.md) file describes how to deploy Wazuh on Kubernetes.
## File Structure
```bash
├── assets
│   ├── documents
│   └── images
│       └── k8s-helm-wazuh-img.png
├── docker
│   ├── Dockerfile
│   ├── scripts
│   │   ├── entrypoint.sh
│   │   └── manage_agent_key.py
│   └── template.ignore
│       ├── runOnHost.sh
│       ├── wait.sh
│       └── wazuh-agent-install-cfm.yaml
├── LICENSE.md
├── README.md
├── strucutre.txt
└── wazuh-kubernetes
    ├── Chart.yaml
    ├── indentifier.yaml
    ├── issuer.yaml
    ├── scripts
    │   ├── data.sh
    │   ├── deploy.sh
    │   ├── remove.sh
    │   ├── test.sh
    │   └── upgrade.sh
    ├── templates
    │   ├── config-map
    │   │   ├── elasticsearch.yml
    │   │   ├── wazuh-agent.yaml
    │   │   ├── wazuh-master.yaml
    │   │   └── wazuh-workers.yaml
    │   ├── daemonset
    │   │   └── wazuh-agent.yaml
    │   ├── deployment
    │   │   └── kibana.yaml
    │   ├── _helpers.tpl
    │   ├── rbac
    │   │   └── wazuh-agent.yaml
    │   ├── rolebinding
    │   │   └── wazuh-agent.yaml
    │   ├── secrets
    │   │   ├── elastic-cred.yaml
    │   │   ├── kibana-certs.yaml
    │   │   ├── odfe-ssl-certs.yaml
    │   │   ├── wazuh-api-cred.yaml
    │   │   ├── wazuh-authd-pass.yaml
    │   │   └── wazuh-cluster-key.yaml
    │   ├── service
    │   │   ├── elasticsearch-api.yaml
    │   │   ├── elasticsearch-svc.yaml
    │   │   ├── kibana.yaml
    │   │   ├── wazuh-cluster.yaml
    │   │   ├── wazuh-master.yaml
    │   │   └── wazuh-workers.yaml
    │   ├── serviceaccount
    │   │   └── wazuh-agent.yaml
    │   └── statefulset 
    │       ├── elasticsearch.yaml
    │       ├── wazuh-master.yaml
    │       └── wazuh-worker.yaml
    └── values.yaml
```
## Branches

* `master` branch contains the latest code, be aware of possible bugs on this branch.

## Local development

To deploy a cluster on your local environment (like Minikube, Kind or Microk8s) read the instructions on [local-environment.md](local-environment.md).

## Contribute

If you want to contribute to the project please don't hesitate to send a pull request.

## About Wazuh

Wazuh is a free and open source platform used for threat prevention, detection, and response. It is capable of protecting workloads across on-premises, virtualized, containerized, and cloud-based environments.

Wazuh solution consists of an endpoint security agent, deployed to the monitored systems, and a management server, which collects and analyzes data gathered by the agents. Besides, Wazuh has been fully integrated with the Elastic Stack, providing a search engine and data visualization tool that allows users to navigate through their security alerts.

## Orchestration

Here you can find all the automation tools maintained by the Wazuh team.

* [Wazuh AWS CloudFormation](https://github.com/wazuh/wazuh-cloudformation)

* [Docker containers](https://github.com/wazuh/wazuh-docker)

* [Wazuh Ansible](https://github.com/wazuh/wazuh-ansible)

* [Wazuh Chef](https://github.com/wazuh/wazuh-chef)

* [Wazuh Puppet](https://github.com/wazuh/wazuh-puppet)

* [Wazuh Kubernetes](https://github.com/wazuh/wazuh-kubernetes)

* [Wazuh Bosh](https://github.com/wazuh/wazuh-bosh)

* [Wazuh Salt](https://github.com/wazuh/wazuh-salt)

## Documentation

* [Full documentation](http://documentation.wazuh.com)
* [Wazuh installation guide](https://documentation.wazuh.com/current/installation-guide/index.html)
* [Deploying Wazuh with Helm](TO_BE_FILLED)

## License and copyright

WAZUH
Copyright (C) 2016-2021 Wazuh Inc.  (License GPLv2)

## References

* [Wazuh website](http://wazuh.com)

## Credits and Thank you

Based on the previous work from Wazuh team [wazuh/wazuh-kubernetes](https://github.com/wazuh/wazuh-kubernetes) (2021/02/15)
