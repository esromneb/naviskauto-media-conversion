# naviskauto-media-conversion


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