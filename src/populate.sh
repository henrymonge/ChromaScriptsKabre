#!/bin/bash
#SBATCH --job-name=get_chroma_stack
#SBATCH --output=get_chroma_stack.txt
#SBATCH --partition=andalan
#SBATCH --ntasks=1
#SBATCH --time=56:00:00

git clone https://github.com/usqcd-software/qmp.git

git clone --recursive -b devel https://github.com/usqcd-software/qdpxx.git

git clone --recursive -b devel https://github.com/jeffersonlab/qdp-jit.git

git clone -b develop https://github.com/lattice/quda.git

git clone --recursive -b devel https://github.com/jeffersonlab/chroma.git

git clone -b release/14.x https://github.com/llvm/llvm-project

