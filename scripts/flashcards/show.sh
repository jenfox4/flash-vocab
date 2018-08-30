#!/bin/bash

curl "http://localhost:4741/flashcards/${ID}" \
  --include \
  --request GET \
