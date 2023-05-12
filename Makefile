TEMPLATE="lol.sh.tmp"
OUT="lol.sh"
AUDIO="audio.s8"
VIDEO="video.bz2"

append_video:
	echo "###VIDEO###" >> ${OUT}
	cat ./${VIDEO} | python3 -m base64 - >> ${OUT}
	echo "###END_VIDEO###" >> ${OUT}
append_audio:
	echo "###AUDIO###" >> lol.sh
	cat ./${AUDIO} | python3 -m base64 - >> ${OUT}
	echo "###END_AUDIO###" >> ${OUT}
append_script:
	cat ./${TEMPLATE} > ${OUT} 
build: append_script append_video append_audio

