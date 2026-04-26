{{- define "iot-gateway.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "iot-gateway.labels" -}}
app.kubernetes.io/name: iot-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: iot
{{- end -}}

{{- define "iot-gateway.selectorLabels" -}}
app.kubernetes.io/name: iot-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
