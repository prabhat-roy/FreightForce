{{- define "user-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "user-service.labels" -}}
app.kubernetes.io/name: user-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: identity
{{- end -}}

{{- define "user-service.selectorLabels" -}}
app.kubernetes.io/name: user-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
