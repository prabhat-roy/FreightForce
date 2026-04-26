{{- define "proof-of-delivery.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "proof-of-delivery.labels" -}}
app.kubernetes.io/name: proof-of-delivery
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: last-mile
{{- end -}}

{{- define "proof-of-delivery.selectorLabels" -}}
app.kubernetes.io/name: proof-of-delivery
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
