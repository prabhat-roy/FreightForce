{{- define "accessorial-charges.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "accessorial-charges.labels" -}}
app.kubernetes.io/name: accessorial-charges
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: billing
{{- end -}}

{{- define "accessorial-charges.selectorLabels" -}}
app.kubernetes.io/name: accessorial-charges
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
