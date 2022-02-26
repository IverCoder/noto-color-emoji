#!/sbin/sh

FONT_DIR=$MODPATH/system/fonts
EMOJI_FONT="NotoColorEmoji.ttf"

replace_oem_emoji(){
    emojis='SamsungColorEmoji.ttf AndroidEmoji-htc.ttf ColorUniEmoji.ttf DcmColorEmoji.ttf CombinedColorEmoji.ttf'
    for i in $emojis ; do
        if [ -f "/system/fonts/$i" ]; then
            cp $FONT_DIR/$EMOJI_FONT $FONT_DIR/$i
        fi
    done
}

replace_oem_emoji
