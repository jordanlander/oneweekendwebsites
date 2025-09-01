#!/usr/bin/env bash
set -euo pipefail

status=$(curl -s -o /tmp/richresults.html -w "%{http_code}\n" -X POST -H "Content-Type: text/html; charset=utf-8" --data-binary @index.html "https://search.google.com/test/rich-results?view=JSON-LD")

if [ "$status" -ne 200 ]; then
  echo "Rich results test returned HTTP $status" >&2
  exit 1
fi

echo "Rich results test passed (HTTP $status)."
