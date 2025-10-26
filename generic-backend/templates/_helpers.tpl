{{- define "generic-backend.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "generic-backend.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name }}
{{- end -}}

{{- define "generic-backend.labels" -}}
app.kubernetes.io/name: {{ include "generic-backend.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

