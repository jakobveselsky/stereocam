#!/bin/bash
while getopts i: flag
do
    case "${flag}" in
        i) index=${OPTARG};;
    esac
done
echo ${index}
ssh pi@192.168.1.2 "sudo libcamera-still -o ~/Pictures/image.jpg --tuning-file /usr/share/libcamera/ipa/raspberrypi/imx219_noir.json && exit"
scp pi@192.168.1.2:/home/pi/Pictures/image.jpg /Users/jakobveselsky/Desktop/Stereo/data/left/image${index}.jpg
ssh pi@192.168.1.3 "sudo libcamera-still -o ~/Pictures/image.jpg --tuning-file /usr/share/libcamera/ipa/raspberrypi/imx219_noir.json && exit"
scp pi@192.168.1.3:/home/pi/Pictures/image.jpg /Users/jakobveselsky/Desktop/Stereo/data/right/image${index}.jpg
