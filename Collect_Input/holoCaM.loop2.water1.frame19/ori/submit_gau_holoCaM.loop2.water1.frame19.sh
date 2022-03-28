#!/bin/bash
#----------------------------------------------------
# Sample Slurm job script
#   for TACC Stampede2 skx nodes
#----------------------------------------------------

#SBATCH -J holoCaM.loop2.water1.frame19
#SBATCH -o holoCaM.loop2.water1.frame19.o%j
#SBATCH -e holoCaM.loop2.water1.frame19.e%j
#SBATCH -p batch
#SBATCH -N 1
#SBATCH -n 12
#SBATCH -t 48:00:00

module load gaussian16
export GAUSS_SCRDIR=$SLURM_SUBMIT_DIR

g16 < holoCaM.loop2.water1.frame19.inp > holoCaM.loop2.water1.frame19.log
