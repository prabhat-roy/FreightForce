{{- define "customer-portal-api.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "customer-portal-api.labels" -}}
app.kubernetes.io/name: customer-portal-api
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: tracking
{{- end -}}

{{- define "customer-portal-api.selectorLabels" -}}
app.kubernetes.io/name: customer-portal-api
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
