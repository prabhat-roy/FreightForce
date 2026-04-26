{{- define "serial-tracking.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "serial-tracking.labels" -}}
app.kubernetes.io/name: serial-tracking
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: inventory
{{- end -}}

{{- define "serial-tracking.selectorLabels" -}}
app.kubernetes.io/name: serial-tracking
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
