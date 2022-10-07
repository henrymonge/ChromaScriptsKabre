#!/bin/bash
source ./env.sh
pushd ${BUILDROOT}

cd ./build_chroma

cmake --build . -j 32 
cmake --install .

popd
