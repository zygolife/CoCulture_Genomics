#!/bin/bash
#SBATCH --nodes 1 --ntasks 1 --mem 4G --time 8:00:00  -p shared --out extract_fastq_bwaunmappedbam.log
module load bedtools
module load samtools
# note that you may need to double check this file is sorted by name
if [ ! -f unmapped.both.sort_name.bam ]; then
 samtools sort -n unmapped.both.bam > unmapped.both.sort_name.bam
fi
bedtools bamtofastq -i unmapped.both.name.bam -fq unmapped_reads/CHZCO_AD052Unmapped_R1.fastq -fq2 unmapped_reads/CHZCO_AD052Unmapped_R2.fastq

# could do a better job cleaning up as we don't need both unmapped.both.name.bam and unmapped.both.bam and by definition
# unmapped.both.bam doesn't have chromosome position info so maybe these two are already identica?
