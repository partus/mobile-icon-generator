#!/bin/bash
# Generate PhoneGap icon and splash screens.
# Copyright 2013 Tom Vincent <http://tlvince.com/contact>

usage() { echo "usage: $0 icon colour [dest_dir] [full_icon]"; exit 1; }

[ "$1" ] && [ "$2" ] || usage
[ "$3" ] || set "$1" "$2" "."

#devices=android,bada,bada-wac,blackberry,ios,webos,windows-phone
#eval mkdir -p "$3/res/{icon,screen}/{$devices}"

mkdir -p $3/resources/splash
mkdir -p $3/resources/icons
# Show the user some progress by outputing all commands being run.
set -x

# Explicitly set background in case image is transparent (see: #3)





convert="convert -background none"


#icons
#iOS
$convert "$1" -resize 57x57 "$3/resources/icons/icon-57.png"
$convert "$1" -resize 114x114 "$3/resources/icons/icon-57-2x.png"
$convert "$1" -resize 72x72 "$3/resources/icons/icon-72.png"
$convert "$1" -resize 144x144 "$3/resources/icons/icon-72-2x.png"

# Android
$convert "$1" -resize 36x36 "$3/resources/icons/icon-36.png"
$convert "$1" -resize 48x48 "$3/resources/icons/icon-48.png"
$convert "$1" -resize 72x72 "$3/resources/icons/icon-72.png"
$convert "$1" -resize 96x96 "$3/resources/icons/icon-96.png"




convert="convert $4 -background $2 -gravity center"

$convert -resize 160x160 -extent 320x480  "$3/resources/splash/splash-320x480.png"
$convert -resize 320x320 -extent 640x960  "$3/resources/splash/splash-320x480@2x.png"
$convert -resize 320x320 -extent 640x1136  "$3/resources/splash/splash-320x568@2x.png"
$convert -resize 384x384 -extent 768x1024  "$3/resources/splash/splash-768x1024.png"
$convert -resize 768x768 -extent 1536x2048  "$3/resources/splash/splash-768x1024@2x.png"
$convert -resize 384x384 -extent 1024x768  "$3/resources/splash/splash-1024x768.png"
$convert -resize 768x768 -extent 2048x1536  "$3/resources/splash/splash-1024x768@2x.png"


$convert -resize 100x100 -extent 200x320 "$3/resources/splash/splash-200x320.png"
$convert -resize 100x100 -extent 320x200 "$3/resources/splash/splash-320x200.png"
$convert -resize 160x160 -extent 320x480 "$3/resources/splash/splash-320x480.png"
$convert -resize 160x160 -extent 480x320 "$3/resources/splash/splash-480x320.png"
$convert -resize 240x240 -extent 480x800 "$3/resources/splash/splash-480x800.png"
$convert -resize 240x240 -extent 800x480 "$3/resources/splash/splash-800x480.png"
$convert -resize 360x360 -extent 720x1280 "$3/resources/splash/splash-720x1280.png"
$convert -resize 360x360 -extent 1280x720 "$3/resources/splash/splash-1280x720.png"

