#!/bin/bash
# Apply Pandoc only to content, preserve YAML

shopt -s nullglob  # Handle missing directories gracefully

for file in target/literature/*.md target/lectures/*.md target/ideas/*.md target/blog/*.qmd; do
  [ -f "$file" ] || continue
  
  # Split YAML and content
  awk 'BEGIN{yaml=1} /^---$/{if(NR==1){next}else{yaml=0;next}} yaml{print > "/tmp/yaml.txt"} !yaml{print > "/tmp/content.txt"}' "$file"
  
  # Process content with Pandoc
  pandoc /tmp/content.txt --lua-filter=target/filters/obsidian-to-quarto.lua -o /tmp/processed.txt
  
  # Recombine
  {
    echo "---"
    cat /tmp/yaml.txt
    echo "---"
    cat /tmp/processed.txt
  } > "$file"
  
  # Cleanup
  rm -f /tmp/yaml.txt /tmp/content.txt /tmp/processed.txt
done
