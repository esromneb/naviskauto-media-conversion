#!/bin/bash

set -e

# List of input files (in outputs folder)
INPUT_FILES=(
)

# Corresponding simple names
OUTPUT_NAMES=(
)

# Process each file
for i in "${!INPUT_FILES[@]}"; do
    input="outputs/${INPUT_FILES[$i]}"
    output="outputs/${OUTPUT_NAMES[$i]}"
    
    if [ -f "$input" ]; then
        echo "Renaming: $input -> $output"
        mv "$input" "$output"
    else
        echo "File not found: $input"
    fi
done

echo "All files processed"
