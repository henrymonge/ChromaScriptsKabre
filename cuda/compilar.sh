#!/bin/bash
#SBATCH --job-name=compilar_chroma_stack
#SBATCH --output=compilar_chroma_stack.txt
#SBATCH --partition=andalan
#SBATCH --ntasks=1
#SBATCH --time=24:00:00

source env.sh

#cmake -version
#cd ../src
#srun ./populate.sh

cd $TOPDIR_HIP

echo `pwd`

rm -r build
mkdir build

./build_qmp.sh  > out_qmp.sh 2>&1
./build_qdpxx.sh > out_qdpxx.sh 2>&1
./build_quda.sh > out_quda.sh 2>&1
./build_chroma.sh > out_chroma.sh 2>&1

