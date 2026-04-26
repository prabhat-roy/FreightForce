{{- define "cold-chain-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cold-chain-service.labels" -}}
app.kubernetes.io/name: cold-chain-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: cold-chain
{{- end -}}

{{- define "cold-chain-service.selectorLabels" -}}
app.kubernetes.io/name: cold-chain-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
