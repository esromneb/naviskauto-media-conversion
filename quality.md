# What works
These settings worked. I had one video file where the bitrate spiked during a montage with flashing neon lights. Originally
the naviskauto player would stutter and freeze the audio and video during this section. I reduced the bitrate a few times until
this section played flawlessly. This may be a product of my SD Card speed as well. If your SD Card is still stuttering with these
settings, reduce them.

## Working Settings

* Target bitrate (-b:v): 5.0 Mbps (about 75% of maxrate)
* Maximum bitrate (-maxrate): 7 Mbps
* Buffer size (-bufsize): 14 Mbps (2x maxrate)
* Audio bitrate at 192kbps
* `QUALITY=-b:v\ 5000k\ -maxrate\ 7000k\ -bufsize\ 14000k\ -b:a\ 192k`

## Further Reduction
I would suggest dropping maximum bitrate by 500 at a time, then calculate target and buffer size based on the comments above


# Example 1:

A few notes about bitrate control:
-maxrate 2000k sets the maximum video bitrate to 2 Mbps
-bufsize 4000k sets the buffer size (typically 2x maxrate)
You might also want to add -b:v to set a target bitrate
For example, for tighter control over bitrate:

This would:
Target 1.5 Mbps video bitrate (-b:v 1500k)
Never exceed 2 Mbps (-maxrate 2000k)
Use a 4 Mbps buffer (-bufsize 4000k)
Keep audio at 192 kbps MP3 (-b:a 192k)
Note: When using -maxrate, it's recommended to also use -bufsize to ensure smooth bitrate control. The buffer size is typically set to 2x the maxrate.



# What does bufsize mean?

The bufsize parameter in ffmpeg sets the size of the decoder buffer, also known as the Video Buffering Verifier (VBV) buffer. Here's how it works:
1. Think of the buffer like a bucket that holds video data:
Video data flows in at varying rates (some frames need more data than others)
The decoder pulls data out of this bucket to play the video
The buffer helps smooth out these variations
Why it matters:
Too small a buffer: The decoder might run out of data (buffer underrun), causing stuttering
Too large a buffer: Introduces more latency and uses more memory
Just right: Allows for bitrate spikes while maintaining consistent playback
Common practice:
bufsize is typically set to 2x the maxrate
In our case: maxrate is 2000k, so bufsize is 4000k
This gives enough headroom for complex scenes that need temporarily higher bitrates
The buffer is particularly important when streaming or when you want to ensure smooth playback across different devices. For local playback of downloaded files, the buffer size is less critical.

