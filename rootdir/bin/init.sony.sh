#!/vendor/bin/sh
ltapath="/dev/block/bootdevice/by-name/LTALabel"
model=`grep -aim1 'model:' "$ltapath" | sed -e 's/^.*model:[ ]*\([A-Za-z0-9-]*\).*$/\1/I'` 2> /dev/null

# Radio
case "$model" in
    "XQ-AS42" | "XQ-AS52" | "XQ-AS62" | "XQ-AS72" )
        setprop vendor.radio.multisim.config dsds;;
    * )
        setprop vendor.radio.multisim.config ss;;
esac

if [ "$model" == "" ]; then

carrier="false"

    # Check if they are japense carrier models
    if grep -aim1 "SOG02" "$ltapath" > /dev/null; then
        carrier="true"
        setprop persist.vendor.nfc.config_file_name "libnfc-nxp-typef.conf"
    fi
    if grep -aim1 "A002SO" "$ltapath" > /dev/null; then
        carrier="true"
        setprop persist.vendor.nfc.config_file_name "libnfc-nxp-typef.conf"
    fi
    if grep -aim1 "SO-52A" "$ltapath" > /dev/null; then
        carrier="true"
        setprop persist.vendor.nfc.config_file_name "libnfc-nxp-typef.conf"
    fi
    if [ ! "$carrier" == "true" ]; then
        setprop persist.vendor.nfc.config_file_name ""
    fi

else
    setprop vendor.radio.ltalabel.model "$model"
fi
