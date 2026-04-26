{{- define "supplier-portal.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "supplier-portal.labels" -}}
app.kubernetes.io/name: supplier-portal
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: supplier-portal
{{- end -}}

{{- define "supplier-portal.selectorLabels" -}}
app.kubernetes.io/name: supplier-portal
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
