#!/bin/bash

curl "http://localhost:4741/myflashcards/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "myflashcard": {
      "sentence": "'"${SEN}"'"
    }
  }'
