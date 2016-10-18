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

#ltrace -S -C -ddd cmake --version

${PREFIX}/bin/cmake --version
${PREFIX}/bin/cmake $SRC_DIR
${PREFIX}/bin/cmake --build ${build_dir} --config Release --target install -- -j
 
$PYTHON setup.py install

