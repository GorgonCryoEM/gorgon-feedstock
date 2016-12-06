#!/bin/sh

build_dir="${SRC_DIR}/../.build_dir"

rm -rf $build_dir
mkdir -p $build_dir
cd $build_dir

export LD_LIBRARY_PATH=${PREFIX}/lib:$LD_LIBRARY_PATH

cmake $SRC_DIR
cmake --build ${build_dir} --config Release --target install -- -j

$PYTHON setup.py install
