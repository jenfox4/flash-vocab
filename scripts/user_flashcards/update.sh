#!/bin/bash

curl "http://localhost:4741/user_flashcards/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "flashcard": {
      "user_id": "'"${USER}"'",
      "flashcard_id": "'"${VOCAB}"'",
      "sentence": "'"${SEN}"'"
    }
  }'
