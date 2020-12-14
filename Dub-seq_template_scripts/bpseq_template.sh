#!/bin/bash
# Bash script for bpseq. Template written by Ben Adler.
# Bash executable usage: 
# bash filename.sh
# Python executable usage:
# python -m dubseq.bpseq -i input_directory_path -o output_directory_path 

# Notebook recording. Fill out this for each new script for record purposes.
# USER: badler
# DATE: 5/11/2020
# PURPOSE: Creating a generalizable template executable script for performing bpseq.

# Only edit these two lines.
INPUT_PATH_BPSEQ_READS="path_to_bpseq_reads_directory"
OUTPUT_PATH_BPSEQ="path_to_bpseq_output_directory"

# Do not change lines below unless you are trying to do something special.
export PYTHONPATH=$PYTHONPATH:path_to_dubseq/bin/DubSeq/

# Check if the input bpseq reads path exists and if an output bpseq path exists. 
# If the output bpseq path does not exist, create a new directory. 
if [ -d $INPUT_PATH_BPSEQ_READS ]
then
        printf "Input directory found\n"
else
        printf "Input directory not found\n"
fi

if [ -d $OUTPUT_PATH_BPSEQ ]
then
	printf "Output directory\n"
else
	printf "Output directory not found. Creating new output directory at:\n $OUTPUT_PATH_BPSEQ \n"
	mkdir $OUTPUT_PATH_BPSEQ
fi

python -m dubseq.bpseq -i $INPUT_PATH_BPSEQ_READS -o $OUTPUT_PATH_BPSEQ
