{{- define "audit-pay.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "audit-pay.labels" -}}
app.kubernetes.io/name: audit-pay
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: billing
{{- end -}}

{{- define "audit-pay.selectorLabels" -}}
app.kubernetes.io/name: audit-pay
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
