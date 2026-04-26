{{- define "cold-chain-compliance.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cold-chain-compliance.labels" -}}
app.kubernetes.io/name: cold-chain-compliance
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: cold-chain
{{- end -}}

{{- define "cold-chain-compliance.selectorLabels" -}}
app.kubernetes.io/name: cold-chain-compliance
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
