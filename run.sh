stage=0
version=1.6.5
# openfst library dir
libdir=openfst

if [ $stage -le 0 ]; then
  # Download
  [ ! -f openfst-${version}.tar.gz ] && \
      wget -c https://www.openfst.org/twiki/pub/FST/FstDownload/openfst-1.6.5.tar.gz
  tar zxvf openfst-${version}.tar.gz
fi


if [ $stage -le 1 ]; then
  # Override by copying
  cp BUILD WORKSPACE openfst-${version}
  # Override fst log/flags with glog/gflags
  cp log.h flags.h openfst-${version}/src/include/fst/
fi


if [ $stage -le 2 ]; then
  pushd openfst-${version}
  bazel build ...
  popd
fi


if [ $stage -le 3 ];then
  mkdir -p $libdir $libdir/lib
  cp -r openfst-${version}/src/include $libdir
  cp openfst-${version}/bazel-bin/*.a $libdir/lib
fi
