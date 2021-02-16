TO BE FILLED IN AT SOME POINT
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

18 directories, 44 files
```
