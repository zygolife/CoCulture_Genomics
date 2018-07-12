#!/bin/bash
#SBATCH --nodes 1 --ntasks 1 --mem 4G --time 8:00:00  -p shared --out extract_fastq_bwaunmappedbam.log
module load bedtools

bedtools bamtofastq -i unmapped.both.bam -fq unmapped_reads/CHZCO_AD052Unmapped_R1.fastq -fq2 unmapped_reads/CHZCO_AD052Unmapped_R2.fastq
