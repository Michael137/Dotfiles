cmake -G Ninja -DLLVM_ENABLE_PROJECTS="clang;lldb;lld" \
               -DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi" \
               -DLLDB_INCLUDE_TESTS=ON \
               -DLLDB_ENABLE_PYTHON=ON \
               -DCMAKE_BUILD_TYPE=Debug \
               -DLLVM_ENABLE_ASSERTIONS=ON \
               ../llvm-org/llvm
