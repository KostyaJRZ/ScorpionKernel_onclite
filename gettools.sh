#!/usr/bin/env bash
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright (C) 2018 Raphiel Rollerscaperers (raphielscape)
# Copyright (C) 2018 Rama Bondan Prakoso (rama982)
# Android Kernel Build Script

# Clone toolchain
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 -b android-10.0.0_r33 --depth=1 stock
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9 -b android-10.0.0_r33 --depth=1 stock_32

# Clone AnyKernel3
git clone https://github.com/KostyaJRZ/AnyKernel3 -b ten

#Download Clang
if [ ! -d clang ]; then
    wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/tags/android-10.0.0_r33/clang-r353983c.tar.gz
    mkdir -p clang/clang-r353983c/
    tar xvzf clang-r353983c.tar.gz -C clang/clang-r353983c
    rm clang-r353983c.tar.gz
fi
