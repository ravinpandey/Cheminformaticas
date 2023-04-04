#!/bin/bash

input_file="$1"
output_dir="$2"
split_size="$3"

mkdir -p "$output_dir"
file_name=$input_file
echo $file
temp_fila_name=$(echo "$file_name" | awk -F'.' '{print $1}')
split -d -l "$split_size" "$input_file" "$output_dir"/"$temp_fila_name"_    --additional-suffix=.smi

echo "Finished splitting file $input_file into smaller files of size $split_size in directory $output_dir"
