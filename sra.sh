#!/bin/bash
#MSUB -e ./tophat.stderr.%j            # stderr file
#MSUB -o ./tophat.stdout.%j            # stdout file
#MSUB -N tophat_run                  # my job's name in the queue
#MSUB -l pmem=20GB
#MSUB -l walltime=12:01:00

export OMP_NUM_THREADS=${MOAB_PROCCOUNT}
echo "Number nodes = ${MOAB_NODECOUNT}"
echo "Number cores = ${MOAB_PROCCOUNT}"
module load bio/tophat/2.0.11
module load bio/samtools/0.1.19
module load bio/bowtie2/2.1.0


name=$1

path= /home/hd/hd_hd/hd_lo149/data/
prefetch /${path}/${name}
