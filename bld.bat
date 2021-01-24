set -eu -o pipefail

outdir=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $outdir
mkdir -p $PREFIX/bin
copy -R * $outdir/
copy $RECIPE_DIR/javatest2.py $outdir/javatest2
ls -l $outdir
ln -s $outdir/javatest2 $PREFIX/bin
chmod 0755 "${PREFIX}/bin/javatest2"

