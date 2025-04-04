#!/bin/bash

# Get the current UTC time in ISO 8601 format
timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
commit_message="World progress commit @ $timestamp"

echo "⏳ Preparing to commit with message: \"$commit_message\""

# Add all changes
git add .
echo "✅ All changes added."

# Commit with message
git commit -m "$commit_message"
echo "📦 Commit created."

# Push to origin
git push origin
echo "🚀 Changes pushed to origin."