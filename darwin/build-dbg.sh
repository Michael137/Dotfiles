#!/bin/bash

ROOT_DIR=$PWD
DBG_DIR=$ROOT_DIR/builds/debug

# Otherwise clang-cache doesn't work.
CMAKE_EXE=`xcrun -f cmake`

mkdir -p $DBG_DIR

FORCE=false
if [[ "$1" == "-f" ]]; then
    FORCE=true
    shift # Remove the -f argument
fi

if [ ! -f $DBG_DIR/CMakeCache.txt ] || [[ "${FORCE}" == true ]]; then
    rm -f $DBG_DIR/CMakeCache.txt
    rm -f $REL_DIR/runtimes/runtimes-bins/CMakeCache.txt
    $CMAKE_EXE -B $DBG_DIR -G Ninja \
        -DCMAKE_BUILD_TYPE=Debug \
        -DLLVM_ENABLE_PROJECTS="clang;lldb" \
        -DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi;libunwind" \
        -DLLVM_TARGETS_TO_BUILD="AArch64;X86" \
        -DLLVM_ENABLE_ASSERTIONS=ON \
        -DLLVM_ENABLE_MODULES=OFF \
        -DLLDB_INCLUDE_TESTS=ON \
        -DLLDB_ENABLE_PYTHON=ON \
        -DLLDB_ENABLE_LUA=OFF \
        -DCMAKE_CXX_COMPILER_LAUNCHER=`xcrun -f clang-cache` \
        -DCMAKE_C_COMPILER_LAUNCHER=`xcrun -f clang-cache` \
        "$@" $ROOT_DIR/llvm
fi

$CMAKE_EXE --build $DBG_DIR --target lldb --target runtimes --target clang --target lldb-test-depends --target dsymutil
