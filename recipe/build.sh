#!/bin/sh

build_dir="${SRC_DIR}/../build_dir"

rm -rf $build_dir
mkdir -p $build_dir
cd $build_dir

which -a cmake

find ${PREFIX} -iname "libarch*"

files=( $PREFIX/bin/cmake `ls $PREFIX/lib/libarch*.so*` )

for f in ${files[@]};do
    echo "=========== $f ============="
    objdump -x $f | grep RPATH
    ldd $f
    echo "======================================="
done

cmake --version
