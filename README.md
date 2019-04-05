# lyrics_finder
Command line lyrics finder

## Requirement
>python3, pip3

## Installation

lyrics_finder is compatible with Linux
```
git clone https://github.com/diwasx/lyrics_finder
cd lyrics_finder
pip3 install -r requirements.txt
```
Download [mps-youtube](https://github.com/mps-youtube/mps-youtube)
Commandline youtube music player that works with lyrics_finder
```
git clone https://github.com/mps-youtube/mps-youtube.git
cd mps-youtube
pip3 install --user . 
```
Run
```
mpsyt /linkin park
```
Check [mps-youtube](https://github.com/mps-youtube/mps-youtube) for more information

## Basic usage (lyrics_finder)
```
./lyrics_finder "artist" "song_title"
```
<img src="https://diwasx.github.io/img_backup/lyrics_finder/basic.svg">


Works for songs that is playing in mpsyt (mps-youtube)

```
./finder.sh
```
<img src="https://diwasx.github.io/img_backup/lyrics_finder/finder.svg">


If 'finder' can find your song title and artist then
run
```
./lyrics_finder.sh
```
<img src="https://diwasx.github.io/img_backup/lyrics_finder/lyrics_finder.svg">
