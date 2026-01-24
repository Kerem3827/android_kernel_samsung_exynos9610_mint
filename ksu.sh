#!/usr/bin/env bash

# Clone KernelSU-Next if not exists
[ ! -e "KernelSU/kernel/setup.sh" ] && \
git clone https://github.com/KernelSU-Next/KernelSU-Next KernelSU

# Checkout legacy branch
cd KernelSU || exit 1
git checkout legacy
cd ..
