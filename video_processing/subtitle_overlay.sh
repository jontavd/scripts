# Subtitle Overlay
sudo /usr/local/bin/ffmpeg -i 'Seinfeld - S04E10 - The Virgin - CLIP.mp4' -vf "subtitles=SeinfeldS04E10TheVirginCLIP.pt-br.srt:force_style='FontName=Arial,FontSize=28,PrimaryColour=&H00FFFFFF,Outline=1,OutlineColour=&H00000000,Shadow=1,MarginV=40'" 'Seinfeld - S04E10 - The Virgin - CLIP.sub.mp4'
