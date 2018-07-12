#!/bin/bash
#SBATCH --nodes 1 --ntasks 1 --mem 8G --time 5:00:00  -p shared

#  if the BAM file is not created already, create it
if [ ! -f CHZCO.bbmap.bam ]; then
 samtools view -b CHZCO.bbmap.sam > CHZCO.bbmap.bam
fi

# if the unmapped read file is not created, make it
if [ ! -f unmapped_bbmap.both.bam ]; then
# flag -f 12 means unmapped read
# basically we process a BAM file, and output only the reads which did not align to the host genome
# in order to extract a parasite genome reads
 samtools view -b -f 12 CHZCO.bbmap.bam > unmapped_bbmap.both.bam
fi
