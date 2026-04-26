{{- define "maintenance-scheduler.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "maintenance-scheduler.labels" -}}
app.kubernetes.io/name: maintenance-scheduler
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: fleet
{{- end -}}

{{- define "maintenance-scheduler.selectorLabels" -}}
app.kubernetes.io/name: maintenance-scheduler
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
