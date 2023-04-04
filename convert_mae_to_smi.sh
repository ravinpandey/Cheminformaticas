#!/bin/bash

# set the input and output directories
input_dir=$1
output_dir=$2

# loop through all .maegz files in the input directory
for file in ${input_dir}/*.maegz; do

  # get the basename of the file (without the extension)
  filename=$(basename -- "$file")
  basename="${filename%.*}"

  # convert the file to .smi format using structconvert
  $SCHRODINGER/utilities/structconvert -imae "${file}" -osmi "${output_dir}/${basename}.smi" 

done
