1. Rename TV Series filenams
```
filebot -rename *.mkv --db TheMovieDB::TV --apply refresh
filebot -rename -r * --db TheMovieDB::TV -non-strict --format "{plex.id}" --apply refresh
```

2. Get Subtitles
```
filebot -get-subtitles * -non-strict --lang Brazilian
filebot -get-subtitles * -non-strict
```
