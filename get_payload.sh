#!/bin/bash
get_audio () {
	match=$(grep --text --line-number '###AUDIO###' lol.sh | cut -d ':' -f 1 | tail -n 1)
        audio_start=$((match + 1))
	head -n -1 <(sed '/###END_AUDIO###/q' <(tail -n +$audio_start -f $0))
}

get_video() {
	match=$(grep --text --line-number '###VIDEO###' $0 | cut -d ':' -f 1 | tail -n 1)
        video_start=$((match + 1))
	head -n -1 <( sed '/###END_VIDEO###/q' <(tail -n +$video_start -f $0))
}




exit 0
