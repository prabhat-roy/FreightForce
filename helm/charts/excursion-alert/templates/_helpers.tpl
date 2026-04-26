{{- define "excursion-alert.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "excursion-alert.labels" -}}
app.kubernetes.io/name: excursion-alert
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: cold-chain
{{- end -}}

{{- define "excursion-alert.selectorLabels" -}}
app.kubernetes.io/name: excursion-alert
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
