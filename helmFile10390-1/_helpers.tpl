{{/*
Expand the name of the chart.
*/}}
{{- define "sanity.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}