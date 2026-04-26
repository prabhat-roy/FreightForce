{{- define "expiry-management.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "expiry-management.labels" -}}
app.kubernetes.io/name: expiry-management
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: inventory
{{- end -}}

{{- define "expiry-management.selectorLabels" -}}
app.kubernetes.io/name: expiry-management
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
