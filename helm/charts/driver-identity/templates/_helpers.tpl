{{- define "driver-identity.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "driver-identity.labels" -}}
app.kubernetes.io/name: driver-identity
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: identity
{{- end -}}

{{- define "driver-identity.selectorLabels" -}}
app.kubernetes.io/name: driver-identity
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
