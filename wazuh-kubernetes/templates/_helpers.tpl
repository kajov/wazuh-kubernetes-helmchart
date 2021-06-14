{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "wazuh.name" -}}
{{ include "appIdentifier" .Values.identifier }}-wazuh
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "wazuh.fullname" -}}
{{ include "appIdentifier" .Values.identifier }}-wazuh
{{- end -}}
{{/*
Create a fully qualified elasticsearch name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "wazuh.elasticsearch.name" -}}
{{ include "appIdentifier" .Values.identifier }}-elasticsearch
{{- end -}}

{{- define "wazuh.elasticsearch.fullname" -}}
{{ include "appIdentifier" .Values.identifier }}-elasticsearch
{{- end -}}


{{- define "wazuh.kibana.name" -}}
{{ include "appIdentifier" .Values.identifier }}-kibana
{{- end -}}
{{/*
Create a fully qualified kibana name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "wazuh.kibana.fullname" -}}
{{ include "appIdentifier" .Values.identifier }}-kibana
{{- end -}}

{{/*
Create a fully qualified Wazuh Agent DaemonSet name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "wazuh.agent.name" -}}
{{ include "appIdentifier" .Values.identifier }}-agent
{{- end -}}

{{- define "wazuh.agent.fullname" -}}
{{ include "appIdentifier" .Values.identifier }}-agent
{{- end -}}

{{/*
Create the name of the service account to use for the agent daemonset
*/}}
{{- define "wazuh.serviceAccountName.agent" -}}
{{- if .Values.agent.serviceAccount.create -}}
{{ default (include "wazuh.agent.fullname" .)  .Values.agent.serviceAccount.name }}
{{- else -}}
{{ default "default" .Values.agent.serviceAccounts.alertmanager.name }}
{{- end -}}
{{- end -}}

{{/* vim: set filetype=mustache: */}}
{{/*
Builds the full AppIdentifier, which is used for Kubernetes Objects
*/}}
{{- define "appIdentifier" -}}
{{ .appName }}-{{ .appId }}
{{- end -}}

{{/*
Builds the full SpaceIdentifier, which is used for Namespaces
*/}}
{{- define "spaceIdentifier" -}}
{{ .spaceName }}-{{ .spaceId }}
{{- end -}}

{{/*
Builds the full DNS of a Service
*/}}
{{- define "serviceName" -}}
{{ template "appIdentifier" }}.{{ template "spaceIdentifier" }}
{{- end -}}

{{- define "dynamicEnvTemplate" -}}
{{- with .Values.api.config.envReplacement }}
{{ tpl . $ | indent 10 }}
{{- end -}}
{{- end -}}

{{- define "annotations" -}}
clusterId: {{ .Values.identifier.clusterId }}
tenantId: {{ .Values.identifier.tenantId }}
tenantName: {{ .Values.identifier.tenantName }}
appId: {{ .Values.identifier.appId }}
appName: {{ .Values.identifier.appName }}
spaceId: {{ .Values.identifier.spaceId }}
spaceName: {{ .Values.identifier.spaceName }}
{{- end -}}

{{- define "labels" -}}
clusterId: {{ .Values.identifier.clusterId }}
tenantId: {{ .Values.identifier.tenantId }}
tenantName: {{ .Values.identifier.tenantName }}
appId: {{ .Values.identifier.appId }}
appName: {{ .Values.identifier.appName }}
spaceId: {{ .Values.identifier.spaceId }}
spaceName: {{ .Values.identifier.spaceName }}
{{- end -}}

{{- define "route53.dns.labels" -}}
{{- if .Values.aws.elb.dns53.enabled -}}
dns: route53
{{- end -}}
{{- end -}}

{{- define "aws.annotations" -}}
{{- if and .Values.aws.elb.enabled .Values.aws.elb.wazuh_workers.enabled .Values.aws.elb.dns53.enabled -}}
domainName: {{ .Values.aws.dns53.wazuhWorkerDomain | quote }}
service.beta.kubernetes.io/aws-load-balancer-backend-protocol: {{ .Values.aws.elb.protocol }}
service.beta.kubernetes.io/aws-load-balancer-ssl-ports: {{ .Values.aws.elb.kibana.port | quote }}
service.beta.kubernetes.io/aws-load-balancer-backend-protocol: {{ .Values.aws.elb.kibana.backEnd | quote}}
{{- end -}}
{{- end -}}