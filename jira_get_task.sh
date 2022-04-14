#!/bin/bash

#echo "Enter your username: $1";
#echo "Enter your auth token: $2";
#echo "Enter your issue id: $3";

token=$(echo -n "$1:$2" | base64)

 curl -D- \
   -X GET \
   -H "Authorization: Basic $token" \
   -H "Content-Type: application/json" \
   "https://e-pilot.atlassian.net/rest/api/2/issue/$3"
