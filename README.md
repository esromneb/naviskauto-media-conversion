# naviskauto-media-conversion
This project converts video files so that they playback with the best quality on the Naviskauto 10.1 Dual Car DVD Player. The output
files go on a SD Card, and then they player will correctly recognize the video format.

## Purchase
* https://www.amazon.com/gp/product/B07LFF55JK/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1

# Usage
On Ubuntu:

```
VIDIN=movie.mp4 ./build.sh
```


# Search Notes

## No resolution arguments, just convert
* output_mpeg2.mpg - wrong resolution
* output_xvid.avi - wrong resolution

## With resolution 1920x1080  (Same results)

## With the tng sample
The original video sample is 592x336
this WORKS for

* output_h264_avi.avi - works, but says unsupported codec
* output_h265_mp4.mp4- works, but says unsupported codec
* output_mpeg1.mpg - work
* output_mpeg2.mpg - work
* output_mpeg4.mp4 - work, no audio
- output_xvid_avi.avi -works

## Notes
Things I want to try:
the larger video down sampled to different rez
set the bitrate and compare quality


```
rm /media/x/suvsd/output_*
cp output_* /media/x/suvsd && sync
```

# Chapters

Encode once, rip out the metadata, copy to a new location

```
encode
ffmpeg -i output_mpeg4.mp4 -f ffmetadata FFMETADATAFILE
ffmpeg -i output_mpeg4.mp4 -i FFMETADATAFILE -map_metadata 1 -codec copy output_mpeg4_chap.mp4
```

* ref: https://ikyle.me/blog/2020/add-mp4-chapters-ffmpeg
* ref: https://www.reddit.com/r/VideoEditing/comments/p3fc61/how_do_you_add_chapters_to_a_video_file/

# Fast Start
Without the fast start flag it takes like almost 30 seconds to start plaing a 3.4G (1 hr 20) movie. When doing the subtitle copy this flag must be present in both calls to ffmpeg

```
-movflags faststart
```
