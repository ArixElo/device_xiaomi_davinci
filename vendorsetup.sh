#!/bin/bash

### Removing and cloning good HALs ###
rm -rf hardware/qcom-caf/sm8150/audio && git clone https://github.com/Laker87/android_hardware_qcom_audio.git -b 11.0-caf-sm8150 hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/display && git clone https://github.com/LineageOS/android_hardware_qcom_display.git -b lineage-18.1-caf-sm8150 hardware/qcom-caf/sm8150/display
rm -rf hardware/qcom-caf/sm8150/media && git clone https://github.com/LineageOS/android_hardware_qcom_media.git -b lineage-18.1-caf-sm8150 hardware/qcom-caf/sm8150/media

### Restoring SSOS CAF Telephony repos ###
repo sync --force-sync android_vendor_codeaurora_telephony
repo sync --force-sync android_frameworks_opt_telephony
repo sync --force-sync android_packages_services_Telephony
