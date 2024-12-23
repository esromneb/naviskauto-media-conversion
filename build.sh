#!/bin/bash

SCALE=-vf\ "scale=720x405"
QUALITY=-qscale:v\ 1\ -b:a\ 192k

ffmpeg -i ${VIDIN} ${SCALE}  ${QUALITY} -movflags faststart -c:v mpeg4 -c:a mp3 UNCHAPTER_mpeg4.mp4

rm FFMETADATAFILE
ffmpeg -i UNCHAPTER_mpeg4.mp4 -f ffmetadata FFMETADATAFILE

# # Get duration in seconds and pass to genchapters.py
DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 UNCHAPTER_mpeg4.mp4)
echo "Video duration: ${DURATION} seconds"

python3 genchapters.py "${DURATION}"

ffmpeg -i UNCHAPTER_mpeg4.mp4 -i FFMETADATAFILE -map_metadata 1 -movflags faststart -codec copy output_mpeg4.mp4
