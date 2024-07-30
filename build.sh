#!/bin/bash

VIDIN=wd.sample.mkv

ffmpeg -i ${VIDIN} -c:v libxvid -c:a mp3 output_xvid.avi
ffmpeg -i ${VIDIN} -c:v mpeg2video -c:a mp2 output_mpeg2.mpg
ffmpeg -i ${VIDIN} -c:v libx264 -c:a aac output_h264.mkv
ffmpeg -i ${VIDIN} -c:v libx264 -c:a aac output_h264.mp4
ffmpeg -i ${VIDIN} -c:v wmv2 -c:a wmav2 output_wmv.wmv
ffmpeg -i ${VIDIN} -c:v libx264 -c:a aac output_mov.mov
ffmpeg -i ${VIDIN} -c:v libx264 -c:a mp3 output_flv.flv
