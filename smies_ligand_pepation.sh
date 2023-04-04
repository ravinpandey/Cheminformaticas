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
  $SCHRODINGER/ligprep -bff $ff -HOST localhost:$cpu -NJOBS $cpu -WAIT -ismi $1 -omae $tmpmaegz -epik
done

echo "Finished ligprep on all files in directory $input_dir"
