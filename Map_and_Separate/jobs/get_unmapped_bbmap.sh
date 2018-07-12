#!/bin/bash
#SBATCH --nodes 1 --ntasks 1 --mem 8G --time 5:00:00  -p shared
if [ ! -f CHZCO.bbmap.bam ]; then
 samtools view -b CHZCO.bbmap.sam > CHZCO.bbmap.bam
fi

if [ ! -f unmapped_bbmap.both.bam ]; then
 samtools view -b -f 12 CHZCO.bbmap.bam > unmapped_bbmap.both.bam
fi
