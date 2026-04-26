{{- define "carrier-selection.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "carrier-selection.labels" -}}
app.kubernetes.io/name: carrier-selection
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: transportation
{{- end -}}

{{- define "carrier-selection.selectorLabels" -}}
app.kubernetes.io/name: carrier-selection
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
