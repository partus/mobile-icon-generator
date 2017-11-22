#!/bin/bash
# Generate PhoneGap icon and splash screens.
# Copyright 2013 Tom Vincent <http://tlvince.com/contact>

# ./last.sh logo_small.png "#555555" ./resources logo_small.png
# ./meteor.sh WorldDurakFinal.png   "#0E0E0E"   testdir  .png
# durak 22.11.2017: ./last.sh app-icon.png "#030E16" ./durak logo-wordDurak.ai
# 1. icons image
# 2. splash background color
# 3. destination directory
# 4. splash image

usage() { echo "usage: $0 icon color [dest_dir] [full_icon]"; exit 1; }

[ "$1" ] && [ "$2" ] || usage
[ "$3" ] || set "$1" "$2" "."

# devices=android,bada,bada-wac,blackberry,ios,webos,windows-phone
# eval mkdir -p "$3/res/{icon,screen}/{$devices}"

# Show the user some progress by outputing all commands being run.
set -x

# Explicitly set background in case image is transparent (see: #3)
convert="convert -background none $1 -resize"
$convert  72x72 "$3/android_hdpi.icon.png"
$convert  36x36 "$3/android_ldpi.icon.png"
$convert  42x42 "$3/android_mdpi.icon.png"
$convert  96x96 "$3/android_xhdpi.icon.png"
$convert  144x144 "$3/android_xxhdpi.icon.png"
$convert  192x192 "$3/android_xxxhdpi.icon.png"

convert="convert -background $2 $1 -resize"
$convert 152x152 "$3/ipad_2x.icon.png"
$convert  76x76 "$3/ipad.icon.png"
$convert  120x120 "$3/iphone_2x.icon.png"
$convert  180x180 "$3/iphone_3x.icon.png"
$convert  60x60 "$3/iphone.icon.png"

$convert  167x167 "$3/ipad_pro.icon.png"
$convert  29x29 "$3/ios_settings.icon.png"
$convert  58x58 "$3/ios_settings_2x.icon.png"
$convert  40x40 "$3/ios_spotlight.icon.png"
$convert  80x80 "$3/ios_spotlight_2x.icon.png"


convert="convert $4 -background $2 -gravity center"

$convert -resize 180x180 -extent 320x200 "$3/android_ldpi_landscape.splash.png"
$convert -resize 180x180 -extent 200x320 "$3/android_ldpi_portrait.splash.png"

$convert -resize 300x300 -extent 480x320 "$3/android_mdpi_landscape.splash.png"
$convert -resize 300x300 -extent 320x480 "$3/android_mdpi_portrait.splash.png"

$convert -resize 400x400 -extent 800x480 "$3/android_hdpi_landscape.splash.png"
$convert -resize 400x400 -extent 480x800 "$3/android_hdpi_portrait.splash.png"


$convert -resize 700x700 -extent 1280x720 "$3/android_xhdpi_landscape.splash.png"
$convert -resize 700x700 -extent 720x1280 "$3/android_xhdpi_portrait.splash.png"
$convert -resize 700x700 -extent 1440x1080 "$3/android_xxhdpi_landscape.splash.png"
$convert -resize 700x700 -extent 1080x1440 "$3/android_xxhdpi_portrait.splash.png"

$convert -resize 1024x1024 -extent 2048x1536 "$3/ipad_landscape_2x.splash.png"
$convert -resize 1024x1024 -extent 1536x2048 "$3/ipad_portrait_2x.splash.png"
$convert -resize 748x748 -extent 1024x768 "$3/ipad_landscape.splash.png"
$convert -resize 748x748 -extent 768x1024 "$3/ipad_portrait.splash.png"
$convert -resize 640x640 -extent 640x960 "$3/iphone_2x.splash.png"
$convert -resize 1024x1024 -extent 2208x1242 "$3/iphone6p_landscape.splash.png"
$convert -resize 1024x1024 -extent 1242x2208 "$3/iphone6p_portrait.splash.png"
$convert -resize 640x640 -extent 640x1136 "$3/iphone5.splash.png"

$convert -resize 720x720 -extent 750x1334 "$3/iphone6.splash.png"

$convert -resize 320x320 -extent 320x480 "$3/iphone.splash.png"
