#!/bin/bash

# VIDIN=wd.sample.mkv
# VIDIN=wd.sample.mkv
# VIDIN=tng.sample.avi

# -vf "scale=960x540"

# nope
# SCALE="-vf \"scale=960x540\""
# SCALE=""
SCALE=-vf\ "scale=720x405"
SCALEX=-vf\ "scale=720x404"

# only applies to xvid
QUALITYX=-qscale:v\ 1\ -b:a\ 192k\ -preset\ veryslow

QUALITY=-qscale:v\ 1\ -b:a\ 192k
# QUALITY=""

# ffmpeg -i ${VIDIN} ${SCALEX} ${QUALITYX} -c:v libxvid -c:a mp3 output_xvid_avi.avi
ffmpeg -i ${VIDIN} ${SCALE}  ${QUALITY} -c:v mpeg4 -c:a mp3 output_mpeg4.mp4


# ffmpeg -i ${VIDIN} -vf "scale=854x480" -c:v mpeg4 -c:a mp3 output_mpeg4_854.mp4
# ffmpeg -i ${VIDIN} -vf "scale=720x405" -c:v mpeg4 -c:a mp3 output_mpeg4_720.mp4
# ffmpeg -i ${VIDIN} -vf "scale=640x360" -c:v mpeg4 -c:a mp3 output_mpeg4_640.mp4
# ffmpeg -i ${VIDIN} -vf "scale=480x270" -c:v mpeg4 -c:a mp3 output_mpeg4_480.mp4

# work but probably not great for compression
# ffmpeg -i ${VIDIN} -c:v mpeg1video -c:a mp2 output_mpeg1.mpg
# ffmpeg -i ${VIDIN} -c:v mpeg2video -c:a mp2 output_mpeg2.mpg

# work but alwasy shows an error
# ffmpeg -i ${VIDIN} -c:v libx264 -c:a mp3 output_h264_avi.avi
# ffmpeg -i ${VIDIN} -c:v libx265 -c:a aac output_h265_mp4.mp4

# Not even recognized
# ffmpeg -i ${VIDIN} -c:v libvpx -c:a libvorbis output_vp8.mkv
# ffmpeg -i ${VIDIN} -c:v libvpx -c:a libvorbis output_vp8.webm
# ffmpeg -i ${VIDIN} -c:v libtheora -c:a libvorbis output_theora.ogv
# ffmpeg -i ${VIDIN} -c:v wmv1 -c:a wmav2 output_wmv1_asf.asf
# ffmpeg -i ${VIDIN} -c:v libx265 -c:a libopus output_h265_mkv.mkv
# ffmpeg -i ${VIDIN} -c:v flv -c:a mp3 output_h263_flv.flv
# ffmpeg -i ${VIDIN} -c:v libaom-av1 -c:a libopus output_av1.mkv


# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v libxvid -c:a mp3 output_xvid.avi
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v mpeg2video -c:a mp2 output_mpeg2.mpg
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v libx264 -c:a mp3 output_h264_avi.avi
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v mpeg1video -c:a mp2 output_mpeg1.mpg
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v libvpx -c:a libvorbis output_vp8.mkv
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v libvpx -c:a libvorbis output_vp8.webm
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v libtheora -c:a libvorbis output_theora.ogv
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v libx265 -c:a aac output_h265.mp4
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v wmv1 -c:a wmav2 output_wmv1.asf
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v libx265 -c:a libopus output_h265.mkv
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v flv -c:a mp3 output_h263.flv
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v mpeg4 -c:a aac output_mpeg4.mp4
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v libaom-av1 -c:a libopus output_av1.mkv












# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v libx264 -c:a aac output_h264.mkv
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v libx264 -c:a aac output_h264.mp4
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v wmv2 -c:a wmav2 output_wmv.wmv
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v libx264 -c:a aac output_mov.mov
# ffmpeg -i ${VIDIN} -vf "scale=1280x720" -c:v libx264 -c:a mp3 output_flv.flv
