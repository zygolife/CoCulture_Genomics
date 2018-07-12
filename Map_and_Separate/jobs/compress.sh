#!/bin/bash

#SBATCH -p shared -t 8:00:0 --ntasks 1 --nodes 1 

gzip -k unmapped_reads/*.fastq
