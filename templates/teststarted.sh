#!/bin/bash

CODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8081/service/rest/v1/repositories)
if [ "$CODE" == "200" ]; then
  exit 0
else
  exit 1
fi
