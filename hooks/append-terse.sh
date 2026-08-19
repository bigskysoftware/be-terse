#!/usr/bin/env bash
# UserPromptSubmit hook. Adds a style instruction to each prompt.
# If the prompt ends with "noterse", the hook adds nothing.
#
# The test reads the raw JSON payload. It looks for "noterse" at the end of a
# JSON string. This removes the dependency on jq.

input=$(cat)

if [[ "$input" =~ noterse([[:space:]]|\\n|\\r|\\t)*\" ]]; then
  echo '{}'
  exit 0
fi

cat <<'JSON'
{
  "hookSpecificOutput": {
    "hookEventName": "UserPromptSubmit",
    "additionalContext": "respond tersely in Simplified Technical English"
  }
}
JSON
