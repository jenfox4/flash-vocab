#!/bin/bash

curl "http://localhost:4741/flashcards/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "flashcard": {
      "word": "'"${WORD}"'",
      "definition": "'"${DEF}"'",
      "sentence": "'"${SEN}"'"
    }
  }'
