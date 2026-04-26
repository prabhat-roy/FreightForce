{{- define "route-optimization.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "route-optimization.labels" -}}
app.kubernetes.io/name: route-optimization
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: transportation
{{- end -}}

{{- define "route-optimization.selectorLabels" -}}
app.kubernetes.io/name: route-optimization
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
