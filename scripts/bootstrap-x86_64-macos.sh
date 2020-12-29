#!/bin/bash

# mac x86_64 native build

CMAKE_BIN=cmake
#BUILD_TYPE=RelWithDebInfo
BUILD_TYPE=Release

rm -rf build-x86_64-macos
mkdir build-x86_64-macos

cd build-x86_64-macos

$CMAKE_BIN \
  -DCMAKE_BUILD_TYPE=${BUILD_TYPE} \
  -DEMBREE_ARM=Off \
  -DEMBREE_IOS=On \
  -DCMAKE_INSTALL_PREFIX=$HOME/local/embree3 \
  -DEMBREE_ISPC_SUPPORT=Off \
  -DEMBREE_TASKING_SYSTEM=gcd \
  -DEMBREE_TUTORIALS=Off \
  -DEMBREE_RAY_PACKETS=Off \
  -DEMBREE_MAX_ISA=AVX2 \
  -DEMBREE_NEON_AVX2_EMULATION=Off \
  -DAS_MAC=ON \
  -DCMAKE_OSX_ARCHITECTURES=x86_64 \
  ..

cd ..
