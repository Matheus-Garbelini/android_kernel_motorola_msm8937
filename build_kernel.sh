#! /bin/sh
export ARCH="arm"
export PLATFORM="montana"
#make ${PLATFORM}_defconfig
export CROSS_COMPILE="/root/kernel/gcc-linaro-4.9.4-2017.01-x86_64_arm-eabi/bin/arm-eabi-"
make modules -j3
cp arch/arm/boot/zImage final
find . -name '*ko' -exec cp '{}' final \;
