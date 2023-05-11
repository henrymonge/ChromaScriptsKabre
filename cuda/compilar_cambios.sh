#!/bin/bash
#SBATCH --job-name=compilar_cambios
#SBATCH --output=compilar_cambios_out.sh
#SBATCH --partition=andalan-debug
#SBATCH --ntasks=1
#SBATCH --time=08:00:00

source env.sh

echo "Compilando cambios...\n\n"


pushd ${BUILDROOT}

cd ./build_chroma

cmake --build . -j 32 -v

if [ $? -eq 0 ]; then
    echo "successful build"
    cmake --install .
else
    echo "failed build"
fi

popd


