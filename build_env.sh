#!/bin/env bash
export RUSTFLAGS="-Ctarget-cpu=native -Copt-level=3 -Cstrip=symbols -Cdebug-assertions=n"
export CFLAGS="-O3 -march=native -pipe"
export CXXFLAGS=$CFLAGS
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/lib/pkgconfig:/usr/lib64/pkgconfig
export CUDA_HOME=/opt/cuda
# must eselect gcc-13, 14 is breaking
# CFLAGS with LTO will break
# you need libunwind, not llvm-libunwind, remember to quickpkg first
