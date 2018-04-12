#!/usr/bin/env bash
# Build file is copied from VarScan
# https://github.com/bioconda/bioconda-recipes/blob/master/recipes/varscan/build.sh
# This file was automatically generated by the sbt-bioconda plugin.

outdir=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $outdir
mkdir -p $PREFIX/bin
cp ToolTemplate-assembly-0.5.jar $outdir/ToolTemplate-assembly-0.5.jar
cp $RECIPE_DIR/biopet-tooltemplate.py $outdir/biopet-tooltemplate
ln -s $outdir/biopet-tooltemplate $PREFIX/bin

