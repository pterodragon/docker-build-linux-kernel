cd linux && git checkout v5.4

cp ../.config .
bear make -j6 INSTALL_HDR_PATH=kernel_header_install headers_install
