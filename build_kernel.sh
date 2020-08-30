kernel_version=linux-5.4
wget "https://git.kernel.org/torvalds/t/$kernel_version.tar.gz"
tar xvzf "$kernel_version.tar.gz"
cd $kernel_version
cp ../.config .
bear make -j6
