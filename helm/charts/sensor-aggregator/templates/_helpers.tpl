{{- define "sensor-aggregator.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "sensor-aggregator.labels" -}}
app.kubernetes.io/name: sensor-aggregator
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: iot
{{- end -}}

{{- define "sensor-aggregator.selectorLabels" -}}
app.kubernetes.io/name: sensor-aggregator
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
