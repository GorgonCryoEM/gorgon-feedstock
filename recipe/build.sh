#!/bin/sh

build_dir="${SRC_DIR}/../build_dir"

rm -rf $build_dir
mkdir -p $build_dir
cd $build_dir

which -a cmake

find ${PREFIX} -iname "libarch*"
pkg_files=( `find /opt/conda/pkgs/ -iname "libarch*"` )

files=( $PREFIX/bin/cmake `ls $PREFIX/lib/libarch*.so*` ${pkg_files[@]} )

for f in ${files[@]};do
    ls -l $f
done

cmake --version
