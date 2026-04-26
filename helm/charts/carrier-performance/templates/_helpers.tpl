{{- define "carrier-performance.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "carrier-performance.labels" -}}
app.kubernetes.io/name: carrier-performance
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: analytics
{{- end -}}

{{- define "carrier-performance.selectorLabels" -}}
app.kubernetes.io/name: carrier-performance
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
