#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Create 5 Sentence Summary
# @raycast.mode fullOutput
# @raycast.packageName Fabric

# Optional parameters:
# @raycast.icon 📝
# @raycast.argument1 { "type": "text", "placeholder": "Input text", "optional": false, "percentEncoded": true}

# Documentation:
# @raycast.description Run fabric create_5_sentence_summary on input text
# @raycast.author hav0k
# @raycast.authorURL https://github.com/havok87

# Set PATH to include common locations and $HOME/go/bin
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/go/bin:$PATH"

# Use the PATH to find and execute fabric
text="$1"

if [ -z "$text" ]; then
  echo "No text provided. Please enter some text."
  exit 1
fi

output=$(echo "$text" | fabric -sp create_5_sentence_summary)

echo "$output"