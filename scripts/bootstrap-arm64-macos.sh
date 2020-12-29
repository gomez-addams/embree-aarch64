#!/bin/bash

# mac arm64 native build

CMAKE_BIN=cmake
#BUILD_TYPE=RelWithDebInfo
BUILD_TYPE=Release

rm -rf build-arm64-macos
mkdir build-arm64-macos

cd build-arm64-macos

$CMAKE_BIN \
  -DCMAKE_BUILD_TYPE=${BUILD_TYPE} \
  -DEMBREE_ARM=On \
  -DEMBREE_IOS=On \
  -DCMAKE_INSTALL_PREFIX=$HOME/local/embree3 \
  -DEMBREE_ISPC_SUPPORT=Off \
  -DEMBREE_TASKING_SYSTEM=gcd \
  -DEMBREE_TUTORIALS=Off \
  -DEMBREE_RAY_PACKETS=Off \
  -DEMBREE_MAX_ISA=AVX2 \
  -DEMBREE_NEON_AVX2_EMULATION=ON \
  -DAS_MAC=ON \
  -DCMAKE_OSX_ARCHITECTURES=arm64 \
  ..

cd ..
