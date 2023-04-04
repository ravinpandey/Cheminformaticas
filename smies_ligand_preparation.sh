#!/bin/bash

input_dir="$1"
output_dir="$2"

# Number of parallel tasks
cpu=6
# Force field (16 = OPLS3, 14 = OPLS2005)
ff=16


mkdir -p "$output_dir"
for file in "$input_dir"/*
do
  file_name=$file
  echo $file
  temp_file_name=$(echo "$file_name" | awk -F'/' '{print $2}')
  echo $temp_file_name
  temp_file_name=$(echo "$temp_file_name" | awk -F'.' '{print $1}')
  #mkdir -p "$output_dir"/"$temp_file_name"
  
  $SCHRODINGER/ligprep -bff $ff -HOST localhost:$cpu -NJOBS $cpu -WAIT -ismi $file -omae $temp_file_name.maegz  -epik
  
  
done

echo "Finished ligprep on all files in directory $input_dir"
