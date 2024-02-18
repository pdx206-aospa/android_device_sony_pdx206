#!/bin/bash
echo 'Start Cloning repos for pdx206'

echo 'Cloning Vendor tree [1/3]'
# Proprietary blobs
rm -rf vendor/sony/pdx206
git clone https://github.com/ahnet-69/vendor_sony_pdx206.git -b fourteen vendor/sony/pdx206

echo 'Cloning Vendor extras [2/3]'
# Dolby/Sony Camera Pro apps
rm -rf vendor/sony/pdx206-extra
git clone https://github.com/ahnet-69/vendor_sony_pdx206-extra.git -b fourteen vendor/sony/pdx206-extra

echo 'Cloning Kernel Source [3/3]'
# Kernel source
rm -rf kernel/sony/sm8250
git clone https://github.com/ahnet-69/kernel_sony_sm8250.git -b fourteen kernel/sony/sm8250
