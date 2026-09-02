1. Rename TV Series filenams
```
filebot -rename *.mkv --db TheMovieDB::TV --apply refresh
filebot -rename -r * --db TheMovieDB::TV -non-strict --format "{plex.id}" --apply refresh
filebot -rename -r * --db TheMovieDB -non-strict --format "{plex.id}" --apply refresh
filebot -rename -r *.mp4 --db TheMovieDB --format "{plex.id}" --apply refresh
filebot -rename * --db TheMovieDB -non-strict --format "{plex.id}" --apply refresh 
```

2. Get Subtitles
```
filebot -get-subtitles -r * --lang Brazilian
```
```
filebot -get-subtitles -r *.mkv --lang Brazilian
```
```
filebot -get-subtitles -r *.mp4 --lang Brazilian
```
```
filebot -get-subtitles -r * -non-strict --lang Brazilian
```
```
filebot -get-subtitles -r * -non-strict
```

3- RSYNC
````
rsync -abviuzP $origin/ $destination/
rsync -avz jontavd@192.168.100.202:/volume2/Downloads/Oppenheimer.2023.2160p.PROPER.IMAX.HYBRID.UHD.REMUX.DV.HDR10+.TrueHD.7.1.Atmos-jennaortegaUHD/Oppenheimer.2023.2160p.PROPER.IMAX.HYBRID.UHD.REMUX.DV.HDR10+.TrueHD.7.1.Atmos-jennaortegaUHD.mkv jontavd@192.168.100.201:/volume1/Downloads/temp_videos/
````

4- ID_RSA SSH
```
cat id_rsa.pub | ssh remote-user@remote-host "cat >>~/.ssh/authorized_keys"
cat .ssh/id_rsa.pub | ssh jontavd@192.168.100.201 "cat >>~/.ssh/authorized_keys"
chmod 700 ~jontavd/.ssh
chmod 600 ~jontavd/.ssh/authorized_keys
```

5- Merge Videos
```
https://stackoverflow.com/questions/7333232/how-to-concatenate-two-mp4-files-using-ffmpeg

:: Create File List
echo file file1.mp4 > mylist.txt 
echo file file2.mp4 >> mylist.txt
echo file file3.mp4 >> mylist.txt

for %%i in (*.mp4) do echo file '%%i'>> mylist.txt
for %%i in *0220.MP4 do echo file '%%i' >> mylist.txt
(for %i in (*.mp4) do @echo file '%i') > list.txt
(for %i in (*0220.MP4) do @echo file '%i') > list.txt

:: Concatenate Files
ffmpeg -f concat -i mylist.txt -c copy output.mp4

for f in *0220.MP4; do echo "file '$f'" >> mylist.txt; done

```
 
