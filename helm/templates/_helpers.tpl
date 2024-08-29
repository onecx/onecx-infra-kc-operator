{{- define "app.labels.common" -}}
version: {{ .Chart.Version | replace "+" "_" }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
app.kubernetes.io/name: {{ template "app.fullname" $ }}
{{- end -}}