{{- define "carrier-integration.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "carrier-integration.labels" -}}
app.kubernetes.io/name: carrier-integration
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: transportation
{{- end -}}

{{- define "carrier-integration.selectorLabels" -}}
app.kubernetes.io/name: carrier-integration
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
