#!/bin/bash

#SBATCH --nodes 1 --ntasks 12 --time 18:00:00 --mem 96G --out spades.%A.log -p shared

module load spades
CPU=$SLURM_CPUS_ON_NODE
if [ ! $SLURM_CPUS_ON_NODE ]; then
 CPU=1
fi

spades.py -m 96 --pe1-1 unmapped_reads/CHZCO_AD052Unmapped_R1.fastq --pe1-2 unmapped_reads/CHZCO_AD052Unmapped_R2.fastq --careful --threads $CPU  -o CHZCO_AD052Unmapped.SPAdes
