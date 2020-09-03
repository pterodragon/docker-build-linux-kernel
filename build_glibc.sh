set -x
git submodule update --init
cd glibc/ && git checkout glibc-2.27 && cd ../
mkdir -p glibc-build/install
cd glibc-build && ../glibc/configure --prefix=$(realpath install) --disable-werror --with-headers=$(realpath ../linux-5.4/kernel_header_install/include) && bear make -j8

