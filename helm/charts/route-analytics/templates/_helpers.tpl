{{- define "route-analytics.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "route-analytics.labels" -}}
app.kubernetes.io/name: route-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: analytics
{{- end -}}

{{- define "route-analytics.selectorLabels" -}}
app.kubernetes.io/name: route-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
