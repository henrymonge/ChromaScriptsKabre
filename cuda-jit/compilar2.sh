#!/bin/bash
#SBATCH --job-name=compilar_llvm
#SBATCH --output=compilar_llvm.txt
#SBATCH --partition=andalan-debug
#SBATCH --ntasks=1
#SBATCH --time=08:00:00

source env.sh

#cmake -version
#cd ../src
#srun ./populate.sh

cd $TOPDIR_HIP

echo `pwd`

rm -r build
mkdir build

#srun ./build_qmp.sh  > out_qmp.sh 2>&1
#srun ./build_llvm-13.sh > out_llvm-13.sh 2>&1
#srun ./build_qdpxx.sh > out_qdpxx.sh 2>&1
srun ./build_quda.sh > out_quda.sh 2>&1
srun ./build_chroma.sh > out_chroma.sh 2>&1

