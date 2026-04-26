{{- define "tms-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "tms-service.labels" -}}
app.kubernetes.io/name: tms-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: transportation
{{- end -}}

{{- define "tms-service.selectorLabels" -}}
app.kubernetes.io/name: tms-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
