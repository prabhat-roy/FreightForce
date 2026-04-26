{{- define "freight-booking.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "freight-booking.labels" -}}
app.kubernetes.io/name: freight-booking
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: freightforce
freightforce.io/domain: customs
{{- end -}}

{{- define "freight-booking.selectorLabels" -}}
app.kubernetes.io/name: freight-booking
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
