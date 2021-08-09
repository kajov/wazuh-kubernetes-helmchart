# Wazuh Kubernetes Helm Chart

[![Slack](https://img.shields.io/badge/slack-join-blue.svg)](https://wazuh.com/community/join-us-on-slack/)
[![Email](https://img.shields.io/badge/email-join-blue.svg)](https://groups.google.com/forum/#!forum/wazuh)
[![Documentation](https://img.shields.io/badge/docs-view-green.svg)](https://documentation.wazuh.com)
[![Documentation](https://img.shields.io/badge/web-view-green.svg)](https://wazuh.com)

Deploy a Wazuh cluster using Helm quickly to Kubernetes.

## Author of the repo

Karolis Jovaisas

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

## Documentation

***TODO***


## Branches

`master` contains latest code and is not considered to be `stable`.
If you find any bugs feel free to create a PR.

### Helm Version

Currently the chart is written using Helm 2 (__v2.16.12__) refactoring to Helm3 hasn't been planned yet
 but deffinetly might be happening in the future.

## Local development
<!-- 
To deploy a cluster on your local environment (like Minikube, Kind or Microk8s) read the instructions on [local-environment.md](assets/documents/local-environment.md). -->

To deploy a cluster on your local environment just navigate to `wazuh-kubernetes/scripts` and execute `test.sh` script to see if everything is linting correctly, afterwards you can deploy it quickly to your Kubernetes using script `deploy.sh`

When you are done with the testing or work, you can use script named `remove.sh` to delete the deployment from your kubernetes environment.

### Wazuh Agent Dockerfile image
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/kajov/wazuh-agent-installer)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/kajov/wazuh-agent-installer)
[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/kajov/wazuh-agent-installer)](https://hub.docker.com/r/kajov/wazuh-agent-installer)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/kajov/wazuh-agent-installer?sort=date)
![Docker Pulls](https://img.shields.io/docker/pulls/kajov/wazuh-agent-installer)

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
