#! /bin/sh
mkdir _tps_img
cd _tps_img
echo $1
ffmpeg -i ../$1 "frame%05d.png"
gifski -o ../vid.gif *.png
cd ..
rm -r _tps_img
