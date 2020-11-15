#!bin/sh

while getopts "r:" opt; do
    case "$opt" in
        r) resolution=$2
    esac
done

echo $resolution
#xrandr --output Virtual1 --size 1920x1080
display_name=`xrandr | grep "connected primary" | cut -d' ' -f1`
echo "${display_name}"