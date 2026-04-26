{{- define "pick-pack-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "pick-pack-service.labels" -}}
app.kubernetes.io/name: pick-pack-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: warehouse
{{- end -}}

{{- define "pick-pack-service.selectorLabels" -}}
app.kubernetes.io/name: pick-pack-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
