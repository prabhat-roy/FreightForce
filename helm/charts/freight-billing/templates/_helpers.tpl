{{- define "freight-billing.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "freight-billing.labels" -}}
app.kubernetes.io/name: freight-billing
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: billing
{{- end -}}

{{- define "freight-billing.selectorLabels" -}}
app.kubernetes.io/name: freight-billing
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
