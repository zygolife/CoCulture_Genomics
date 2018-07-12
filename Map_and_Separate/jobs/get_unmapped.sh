#!/bin/bash
#SBATCH --nodes 1 --ntasks 1 --mem 8G --time 5:00:00  -p shared
if [ ! -f CHZCO.bwa.bam ]; then
 samtools view -b CHZCO.bwa.sam > CHZCO.bwa.bam
fi

if [ ! -f unmapped.both.bam ]; then
 samtools view -b -f 12 CHZCO.bwa.bam > unmapped.both.bam
fi
