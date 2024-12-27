#!/bin/bash

# List of input files
INPUT_FILES=(
    "path1"
    "path2"
)

# Process each file
for file in "${INPUT_FILES[@]}"; do
    echo "Processing: ${file}"
    make clean
    VIDIN="${file}" ./build.sh
    echo "Completed: ${file}"
    echo "-------------------"
done

echo "All files processed"
