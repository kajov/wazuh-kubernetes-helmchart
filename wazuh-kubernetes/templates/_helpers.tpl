{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name }}
{{- end -}}

{{- define "appIdentifier" -}}
{{ .appName }}-{{ .appId }}
{{- end -}}

{{- define "spaceIdentifier" -}}
{{ .spaceName }}-{{ .spaceId }}
{{- end -}}

{{- define "serviceName" -}}
{{ template "appIdentifier" }}.{{ template "spaceIdentifier" }}
{{- end -}}

{{- define "dynamicEnvTemplate" -}}
{{- with .Values.config.envReplacement }}
{{ tpl . $ | indent 10 }}
{{- end -}}
{{- end -}}

{{- define "annotations" -}}
clusterId: {{ .Identifier.identifier.clusterId }}
tenantId: {{ .Identifier.identifier.tenantId }}
tenantName: {{ .Identifier.identifier.tenantName }}
appId: {{ .Identifier.identifier.appId }}
appName: {{ .Identifier.identifier.appName }}
spaceId: {{ .Identifier.identifier.spaceId }}
spaceName: {{ .Identifier.identifier.spaceName }}
{{- end -}}

{{- define "labels" -}}
clusterId: {{ .Identifier.identifier.clusterId }}
tenantId: {{ .Identifier.identifier.tenantId }}
tenantName: {{ .Identifier.identifier.tenantName }}
appId: {{ .Identifier.identifier.appId }}
appName: {{ .Identifier.identifier.appName }}
spaceId: {{ .Identifier.identifier.spaceId }}
spaceName: {{ .Identifier.identifier.spaceName }}
{{- end -}}
