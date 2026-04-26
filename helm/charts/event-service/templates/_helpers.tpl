{{- define "event-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "event-service.labels" -}}
app.kubernetes.io/name: event-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: tracking
{{- end -}}

{{- define "event-service.selectorLabels" -}}
app.kubernetes.io/name: event-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
