#!/bin/bash

token=$(echo -n "$1:$2" | base64)

 curl -D- \
   -X POST \
   --data '{"transition":{"id":"51"}}' \
   -H "Authorization: Basic $token" \
   -H "Content-Type: application/json" \
   "https://e-pilot.atlassian.net/rest/api/2/issue/$3/transitions"
