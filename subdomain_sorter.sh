#!/bin/bash

# Ask for input file
read -rp "Enter the name of the input file: " input_file
if [ ! -f "$input_file" ]; then
  echo "File '$input_file' not found. Exiting."
  exit 1
fi

# Ask for the main domain (e.g., diriyah.sa)
read -rp "Enter the main domain (e.g., diriyah.sa): " main_domain

# Directory to store results
results_dir="results"
mkdir -p "$results_dir"

# Extract unique subdomains under the given main domain
subdomains=$(grep -oP "https?://\K[^/]*\.${main_domain}" "$input_file" | sort -u)

# Loop through each subdomain
while read -r sub; do
  if [[ -n "$sub" ]]; then
    output_file="$results_dir/$sub.txt"

    # Append matching URLs
    grep "$sub" "$input_file" >> "$output_file"

    # Deduplicate the file (in-place)
    sort -u "$output_file" -o "$output_file"
  fi
done <<< "$subdomains"

echo "✅ Done. Deduplicated URLs saved in /$results_dir per subdomain."
