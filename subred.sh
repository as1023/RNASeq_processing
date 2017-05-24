#!/bin/bash
#MSUB -e ./subred.stderr.%j            # stderr file
#MSUB -o ./subred.stdout.%j            # stdout file
#MSUB -N subred_run                  # my job's name in the queue
#MSUB -l pmem=5GB
#MSUB -l walltime=12:01:00

export OMP_NUM_THREADS=${MOAB_PROCCOUNT}
echo "Number nodes = ${MOAB_NODECOUNT}"
echo "Number cores = ${MOAB_PROCCOUNT}"

#module load bio/tophat/2.0.11
#module load bio/samtools/0.1.19
#module load bio/bowtie2/2.1.0

module load bio/tophat/2.0.11
module load bio/samtools/0.1.19
module load bio/bowtie2/2.1.0


######MSUB -l nodes=2:ppn=16

name=$1
index=/home/hd/hd_hd/hd_lo149/genome
out=/home/hd/hd_hd/hd_lo149/subread
data=/home/hd/hd_hd/hd_lo149/data/WT_0-22

subread-align -t 0 -T 5 -i ${index}/Neuospora_index -r ${data}/${name}.fastq -o ${out}/${name}/accepted_hits.bam
samtools sort ${out}/${name}/accepted_hits.bam -o ${out}/${name}/accepted_hits.bam 
samtools index ${out}/${name}/accepted_hits.bam 


