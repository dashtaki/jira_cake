#!/bin/bash

token=$(echo -n "$1:$2" | base64)

 curl -D- \
   -X GET \
   -H "Authorization: Basic $token" \
   -H "Content-Type: application/json" \
   "https://e-pilot.atlassian.net/rest/api/2/issue/$3/transitions"
