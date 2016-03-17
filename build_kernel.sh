#!/bin/bash

export PATH=export PATH=$(pwd)/../prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin:$PATH

mkdir output

make -C $(pwd) O=output ARCH=arm CROSS_COMPILE=arm-linux-androideabi- msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974pro_sec_klte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output ARCH=arm CROSS_COMPILE=arm-linux-androideabi- 

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
