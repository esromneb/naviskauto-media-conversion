#!/bin/bash

VIDIN=wd.sample.mkv
VIDIN=tng.sample.avi

ffmpeg -i ${VIDIN} -c:v libxvid -c:a mp3 output_xvid_avi.avi
ffmpeg -i ${VIDIN} -c:v mpeg1video -c:a mp2 output_mpeg1.mpg
ffmpeg -i ${VIDIN} -c:v mpeg2video -c:a mp2 output_mpeg2.mpg
ffmpeg -i ${VIDIN} -c:v mpeg4 -c:a aac output_mpeg4.mp4
ffmpeg -i ${VIDIN} -c:v libx264 -c:a mp3 output_h264_avi.avi
ffmpeg -i ${VIDIN} -c:v libx265 -c:a aac output_h265_mp4.mp4

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
