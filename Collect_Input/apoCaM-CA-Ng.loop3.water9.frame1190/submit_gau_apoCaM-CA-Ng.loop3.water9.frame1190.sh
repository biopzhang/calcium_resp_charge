#!/bin/bash
#----------------------------------------------------
# Sample Slurm job script
#   for TACC Stampede2 skx nodes
#----------------------------------------------------

#SBATCH -J apoCaM-CA-Ng.loop3.water9.frame1190
#SBATCH -o apoCaM-CA-Ng.loop3.water9.frame1190.o%j
#SBATCH -e apoCaM-CA-Ng.loop3.water9.frame1190.e%j
#SBATCH -p batch
#SBATCH -N 1
#SBATCH -n 12
#SBATCH -t 48:00:00

module load gaussian16
export GAUSS_SCRDIR=$SLURM_SUBMIT_DIR

g16 < apoCaM-CA-Ng.loop3.water9.frame1190.inp > apoCaM-CA-Ng.loop3.water9.frame1190.log
