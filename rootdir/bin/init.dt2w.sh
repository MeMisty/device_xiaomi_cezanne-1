# Double Tap to Wake
# If there is no property value, which occurs on first boot, we need to set one

getprop_prop=$(getprop persist.sys.cezanne.dt2w)

if [ ! -z "$getprop_prop" ]; then
    setprop persist.sys.cezanne.dt2w "1"
fi
