{{- define "load-planning.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "load-planning.labels" -}}
app.kubernetes.io/name: load-planning
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: transportation
{{- end -}}

{{- define "load-planning.selectorLabels" -}}
app.kubernetes.io/name: load-planning
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
