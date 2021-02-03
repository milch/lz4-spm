#!/bin/bash

CODE_DIR=Sources/lz4
INCLUDE_DIR=$CODE_DIR/include

rm -rf $CODE_DIR $INCLUDE_DIR
mkdir -p $CODE_DIR $INCLUDE_DIR

cp lz4/lib/*.c $CODE_DIR
cp lz4/lib/*.h $INCLUDE_DIR

perl -i -p0e 's/#if defined \(__cplusplus\)\n(extern "C" {|})\n#endif//gs' $INCLUDE_DIR/lz4hc.h
