{{- define "temperature-monitoring.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "temperature-monitoring.labels" -}}
app.kubernetes.io/name: temperature-monitoring
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: cold-chain
{{- end -}}

{{- define "temperature-monitoring.selectorLabels" -}}
app.kubernetes.io/name: temperature-monitoring
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
