{{- define "compliance-checker.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "compliance-checker.labels" -}}
app.kubernetes.io/name: compliance-checker
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: customs
{{- end -}}

{{- define "compliance-checker.selectorLabels" -}}
app.kubernetes.io/name: compliance-checker
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
