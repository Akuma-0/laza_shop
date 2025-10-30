#!/bin/bash
# inject-google-services.sh
# This script decodes and injects google-services.json from environment variable for CI/CD

set -e

GOOGLE_SERVICES_PATH="android/app/google-services.json"

if [ -z "$GOOGLE_SERVICES_JSON" ]; then
    echo "❌ Error: GOOGLE_SERVICES_JSON environment variable is not set"
    echo "Please set it to the base64 encoded content of google-services.json"
    echo "To encode: base64 -w 0 android/app/google-services.json"
    exit 1
fi

echo "🔧 Injecting google-services.json from environment variable..."

# Decode base64 and write to file
echo "$GOOGLE_SERVICES_JSON" | base64 -d > "$GOOGLE_SERVICES_PATH"

if [ -f "$GOOGLE_SERVICES_PATH" ]; then
    echo "✅ Successfully injected google-services.json"
    echo "📍 File location: $GOOGLE_SERVICES_PATH"
    
    # Verify it's valid JSON
    if command -v jq >/dev/null 2>&1; then
        if jq empty "$GOOGLE_SERVICES_PATH" 2>/dev/null; then
            echo "✅ File is valid JSON"
        else
            echo "❌ Warning: File is not valid JSON"
        fi
    fi
else
    echo "❌ Error: Failed to create google-services.json"
    exit 1
fi