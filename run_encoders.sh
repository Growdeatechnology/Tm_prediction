#!/bin/bash

# List of encoders
encoders=("DPC" "Moran" "QSO" "TPC" "NMB" "SOCN" "PAAC" "APAAC" "Geary" "AAC")

# Path to the profeatx executable
profeatx_path="./profeatx"

# Input and output paths
input_path="/home/gdt-ws4/Desktop/all_data.fasta"
output_dir="/home/gdt-ws4/Desktop/all_data_feature/"

# Grant execute permission to the profeatx executable (only if needed)
chmod +x "$profeatx_path"

# Loop through encoders and execute the command
for encoder in "${encoders[@]}"; do
   echo "$encoder"
   output_file="${encoder}.tsv"
   command="$profeatx_path -i $input_path -o ${output_dir}${output_file} -t 8 -e $encoder"
   eval "$command"
done

