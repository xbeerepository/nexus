#!/bin/bash

curl -v -u admin:admin123 --header "Content-Type: application/json" 'http://localhost:8081/service/rest/v1/script/' -d @{{ .templates }}/security.json
curl -v -X POST -u admin:admin123 --header "Content-Type: text/plain" "http://localhost:8081/service/rest/v1/script/security/run"

