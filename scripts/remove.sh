#!/usr/bin/env bash
. ./data.sh
echo $HELM_RELEASE_NAME

helm delete $HELM_RELEASE_NAME --purge --debug
