#!/bin/bash

curl "http://localhost:4741/user_flashcards/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "flashcard": {
      "user_id": "'"${USER}"'",
      "flashcard_id": "'"${VOCAB}"'",
      "sentence": "'"${SEN}"'"
    }
  }'
