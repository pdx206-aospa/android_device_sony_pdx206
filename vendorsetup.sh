#!/bin/bash
echo 'Start Cloning repos for pdx206'

echo 'Cloning Vendor tree [1/5]'
# Proprietary blobs
rm -rf vendor/sony/pdx206
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_sony_pdx206.git -b fourteen vendor/sony/pdx206

echo 'Cloning Vendor extras [2/5]'
# Dolby/Sony Camera Pro apps
rm -rf vendor/sony/pdx206-extra
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_sony_pdx206-extra.git -b fourteen vendor/sony/pdx206-extra

echo 'Cloning Kernel Source [3/5]'
# Kernel source
rm -rf kernel/sony/sm8250
git clone --depth=1 https://github.com/ProjectElixir-Devices/kernel_sony_sm8250.git -b fourteen kernel/sony/sm8250

echo 'Cloning Hardware repo [4/5]'
# Hardware repo
rm -rf hardware/sony
git clone --depth=1 https://github.com/ProjectElixir-Devices/hardware_sony.git -b fourteen hardware/sony

echo 'Cloning aidl vibrator from PE 13 [5/5]'
# Aidl vibrator HAL from pe 13
rm -rf vendor/qcom/opensource/vibrator
git clone --depth=1 https://github.com/PixelExperience/vendor_qcom_opensource_vibrator.git -b thirteen vendor/qcom/opensource/vibrator
