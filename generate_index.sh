#!/bin/sh

set -e

for folder in action alert av communication content device editor file hardware image maps navigation notification social toggle; do
    echo Write $folder.html

    echo "<html><body><h1>$folder</h1><table>" > $folder.html

    for image in $(find "$folder/ios" -iname '*_black_*dp.png'); do
        basename=$(basename $image)
        echo "<tr><td><img src=$image></td><td>$basename</td></tr>"
    done >> $folder.html

    echo "</table><table style='color: black; background-color: lightgray;'>" >> $folder.html

    for image in $(find "$folder/ios" -iname '*_amber_*dp.png'); do
        basename=$(basename $image)
        echo "<tr><td><img src=$image></td><td>$basename</td></tr>"
    done >> $folder.html

    echo "</table><table style='color: black; background-color: lightgray;'>" >> $folder.html

    for image in $(find "$folder/ios" -iname '*_red_*dp.png'); do
        basename=$(basename $image)
        echo "<tr><td><img src=$image></td><td>$basename</td></tr>"
    done >> $folder.html

    echo "</table><table style='color: white; background-color: black;'>" >> $folder.html

    for image in $(find "$folder/ios" -iname '*_white_*dp.png'); do
        basename=$(basename $image)
        echo "<tr><td><img src=$image></td><td>$basename</td></tr>"
    done >> $folder.html

    echo "</table></body></html>" >> $folder.html
done
