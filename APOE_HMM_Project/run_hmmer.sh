#!/bin/bash
#SBATCH --job-name=hmmer_apoe
#SBATCH --output=hmmer_apoe.out
#SBATCH --time=00:10:00
#SBATCH --mem=1G
#SBATCH --ntasks=1
#SBATCH --account=your_group_name_here

module load hmmer/3.3.2
hmmbuild apoe.hmm APOE_isoforms.fasta
hmmsearch --tblout scan_results.txt apoe.hmm Mammal_APOE_candidates.fasta
