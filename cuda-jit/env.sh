module load cuda/11.6.2-gcc-9.3.0
module load gcc/11.1.0
module load mpich/3.2.1-gcc

#Use conda to activate enviroment with latest cmake
eval "$(conda shell.bash hook)"
conda init bash
conda activate myenv

module list

export GCC_HOME=/opt/compilers/gcc-11.1.0
export TOPDIR_HIP=/home/hmonge/chroma/cuda-jit

export TOPDIR_HIP=`pwd`
export SRCROOT=${TOPDIR_HIP}/../src
export BUILDROOT=${TOPDIR_HIP}/build
export INSTALLROOT=${TOPDIR_HIP}/install

#Here we need to pass the library paths
export LD_LIBRARY_PATH=${INSTALLROOT}/chroma/lib:${INSTALLROOT}/quda/lib:/opt/tools/cuda-11.6.2-gcc-9.3.0/lib64:${INSTALLROOT}/qdpxx/lib:${INSTALLROOT}/qmp/lib:${INSTALLROOT}/llvm-13/lib:${LD_LIBRARY_PATH}

export CUDA_HOME=/opt/tools/cuda-11.6.2-gcc-9.3.0
export MPI_HOME=/opt/tools/mpich-3.2.1




