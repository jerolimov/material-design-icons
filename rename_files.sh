#!/bin/sh

set -e

for folder in action alert av communication content device editor file hardware image maps navigation notification social toggle; do
    echo "Check folder $folder/ios"
    for imageset in $(find "$folder/ios" -iname '*.imageset'); do
        wrong_imageset=$(basename "$imageset" | sed 's/.imageset$//g')
        wrong_imageset_dir="$folder/ios/$wrong_imageset.imageset"
        echo "  Check imageset $wrong_imageset"

        right_imageset=$(echo "$wrong_imageset" | sed 's/\(_[0-9][0-9]pt\)/_black\1/g;s/$/_black_24pt/g;s/white_black/white/g;s/black_black/black/g;s/pt_black_24pt$/pt/g')
        right_imageset_dir="$folder/ios/$right_imageset.imageset"

        # If we have a no black dir but a white dir we create them from the current file
        if [ -d "$wrong_imageset_dir" -a ! -d "$right_imageset_dir" ]; then
            echo "    Rename $wrong_imageset to $right_imageset"
            sed -i "" "s/${wrong_imageset}/${right_imageset}/g" "$wrong_imageset_dir/Contents.json"
            mv "$wrong_imageset_dir/${wrong_imageset}.png"      "$wrong_imageset_dir/${right_imageset}.png"
            mv "$wrong_imageset_dir/${wrong_imageset}_2x.png"   "$wrong_imageset_dir/${right_imageset}_2x.png"
            mv "$wrong_imageset_dir/${wrong_imageset}_3x.png"   "$wrong_imageset_dir/${right_imageset}_3x.png"
            mv "$wrong_imageset_dir" "$right_imageset_dir"
        fi

    done
done
