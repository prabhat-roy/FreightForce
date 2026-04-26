{{- define "demand-forecasting.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "demand-forecasting.labels" -}}
app.kubernetes.io/name: demand-forecasting
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: analytics
{{- end -}}

{{- define "demand-forecasting.selectorLabels" -}}
app.kubernetes.io/name: demand-forecasting
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
