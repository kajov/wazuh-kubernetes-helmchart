#!/usr/bin/env bash
export CLUSTER_ID="minikube"

export SPACE_NAME="wazuh"
# export SPACE_ID=""
# export KUBE_NAMESPACE="${SPACE_NAME}-${SPACE_ID}"
export KUBE_NAMESPACE="${SPACE_NAME}"


export APP_NAME="wazuh"
## generate new app_id with nanoid
export APP_ID="m419ld912kghas2"
export HELM_RELEASE_NAME="${APP_NAME}-${APP_ID}"

export HELM_VALUES_PATH="../values.yaml"
export HELM_CHART_PATH=".."
export HELM_METADATA="../metadata.yaml"
export HELM_APPDATA="../appData.yaml"