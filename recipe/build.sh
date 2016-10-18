#!/bin/sh

build_dir="${SRC_DIR}/../build_dir"

rm -rf $build_dir
mkdir -p $build_dir
cd $build_dir

which -a cmake

find ${PREFIX} -iname "libarch*"

files=( $PREFIX/bin/cmake `ls $PREFIX/lib/libarch*` )

for f in ${files};do
    otool -L $f
done

cmake --version
