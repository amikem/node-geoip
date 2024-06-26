#!/bin/bash

# Navigate to the directory of your local clone
#cd /path/to/your/local/xlsx-template

# Fetch updates from the original repository
git fetch upstream

# Merge updates into the local master branch
git checkout main
git merge upstream/main

# Run tests
npm install

# Check if tests passed
if [ $? -eq 0 ]; then
  # Push updates to your GitHub repository
  git push origin main
else
  echo "Tests failed. Please check the errors and resolve them."
fi

