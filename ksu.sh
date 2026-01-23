#!/usr/bin/env bash

[ ! -e "KernelSU/kernel/setup.sh" ] && \
git clone https://github.com/KernelSU-Next/KernelSU-Next KernelSU && 
cd KernelSU && git branch v1.1.1 && 
cd ../

if [[ $BUILD_SUSFS == 'true' && $BUILD_KERNEL_KSU == 'true' ]]; then
    cd KernelSU && git checkout next-susfs && cd ../
    patch -p1 < susfs.patch
fi
