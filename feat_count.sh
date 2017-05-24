#!/bin/bash
#MSUB -e ./f_count.stderr.%j            # stderr file
#MSUB -o ./f_count.stdout.%j            # stdout file
#MSUB -N f_count_run                  # my job's name in the queue
#MSUB -l pmem=5GB  
#MSUB -l walltime=12:01:00

export OMP_NUM_THREADS=${MOAB_PROCCOUNT}
echo "Number nodes = ${MOAB_NODECOUNT}"
echo "Number cores = ${MOAB_PROCCOUNT}"
#module load bio/tophat/2.0.11
#module load bio/samtools/0.1.19
#module load bio/bowtie2/2.1.0

######MSUB -l nodes=2:ppn=16
name=$1
index=/home/hd/hd_hd/hd_lo149/genome
out=/home/hd/hd_hd/hd_lo149/alignment
data=/home/hd/hd_hd/hd_lo149/count

featureCounts -a ${index}/Neurospora_crassa.NC12.34.gtf -t exon -g gene_id -o ${data}/${name}_f_counts.txt ${out}/${name}/accepted_hits.bam
