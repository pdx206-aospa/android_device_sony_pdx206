#!/bin/bash
echo 'Start Cloning repos for pdx206'

echo 'Cloning Vendor tree [1/4]'
# Proprietary blobs
rm -rf vendor/sony/pdx206
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_sony_pdx206.git -b fourteen vendor/sony/pdx206

echo 'Cloning Vendor extras [2/4]'
# Dolby/Sony Camera Pro apps
rm -rf vendor/sony/pdx206-extra
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_sony_pdx206-extra.git -b fourteen vendor/sony/pdx206-extra

echo 'Cloning Kernel Source [3/4]'
# Kernel source
rm -rf kernel/sony/sm8250
git clone --depth=1 https://github.com/ProjectElixir-Devices/kernel_sony_sm8250.git -b fourteen kernel/sony/sm8250

echo 'Cloning Hardware repo [4/4]'
# Kernel source
rm -rf hardware/sony
git clone --depth=1 https://github.com/ProjectElixir-Devices/hardware_sony.git -b fourteen hardware_sony
