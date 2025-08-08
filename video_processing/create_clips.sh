## Create Video Clips from a Video file
# MP4
ffmpeg -i 'Seinfeld - S04E10 - The Virgin.mkv' -ss 00:04:22.0 -to 00:05:47.0 -c copy 'Seinfeld - S04E10 - The Virgin - CLIP.mkv'

# MKV to MP4
ffmpeg -i 'Seinfeld - S04E10 - The Virgin.mkv' -ss 00:04:22.0 -to 00:05:47.0 -c:v libx264 -preset veryfast -crf 23 -c:a aac -b:a 192k 'Seinfeld - S04E10 - The Virgin - CLIP.mp4'
ffmpeg -i input.mkv -ss 00:01:15.0 -to 00:05:29.0 -c:v libx264 -preset veryfast -crf 23 -c:a aac -b:a 192k output_clip.mkv

# optional
sudo /usr/local/bin/ffmpeg -i 'Seinfeld - S04E10 - The Virgin.mkv' -ss 00:04:22.0 -to 00:05:47.0 -c:v libx264 -preset veryfast -crf 23 -c:a aac -b:a 192k 'Seinfeld - S04E10 - The Virgin - CLIP.mp4'
sudo /usr/local/bin/ffmpeg -i 'Seinfeld - S04E10 - The Virgin.mkv' -ss 00:04:22.0 -to 00:05:47.0 -c:v libx264 -preset veryfast -crf 23 -c:a aac -b:a 192k 'Seinfeld - S04E10 - The Virgin - CLIP.mkv'

ffmpeg -i input.mkv -ss 00:01:15.0 -to 00:05:29.0 -c:v libx264 -preset veryfast -crf 23 -c:a aac -b:a 192k output_clip.mkv
