#!/bin/zsh

PP_TEXT=""
FILE="$(pwd)/pp.txt"

function get_PP_TEXT() {
	# get random line number between 86 and 7700
	START=86
	END=7700
	LINE_NO=$(jot -r 1 $START $END)

	# get text
	PP_TEXT=$(awk "NR==$LINE_NO" $FILE)
}

while [ "$PP_TEXT"="" ]
do
	get_PP_TEXT
	if [[ "$PP_TEXT" != "" ]]; then  # todo: if [[ $PP_TEXT==\CHAPTER* ]]
	    break
	fi
done


SCREENSAVER_MSG=$(echo "$PP_TEXT\n\n— Pride and Prejudice, line $LINE_NO" | sed 's/"/\\"/g')
SCREENSAVER_MSG='"'$SCREENSAVER_MSG'"'


defaults -currentHost write com.apple.ScreenSaver.Computer-Name MESSAGE $SCREENSAVER_MSG
killall cfprefsd

