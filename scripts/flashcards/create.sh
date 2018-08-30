#!/bin/bash

curl "http://localhost:4741/flashcards/${ID}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "flashcard": {
      "word": "'"${WORD}"'",
      "definition": "'"${DEF}"'",
      "sentence": "'"${SEN}"'"
    }
  }'
