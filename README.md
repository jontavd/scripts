# Scripts Repository

This repository contains a collection of scripts that I frequently use for personal tasks, ranging from video file conversions, extracting audio from video files, organizing TV show video files, and applying overlays to GoPro footage. The goal is to keep this repository organized and share these scripts for others to benefit from.

## Tech Stack

- **MacOS** (iTerm): My primary development and scripting environment.
- **Synology DS416**: Used for video backup and storage.
- **Synology DS220+**: Used as a PLEX library server for managing and streaming video content.
- **GoPro 7 Silver**: Used for capturing footage, with scripts designed for GoPro video processing.

## Table of Contents

1. [Video Processing](#video-processing)
2. [TV Show Organizer](#tv-show-organizer)
3. [Utilities](#utilities)
4. [Usage](#usage)
5. [Contributing](#contributing)
6. [License](#license)

## Video Processing

This folder contains scripts for handling various video processing tasks.

- `convert_video.sh`: Convert video files from one format to another.
- `extract_audio.sh`: Extract audio tracks from video files.
- `gopro_overlay.sh`: Add speed/altitude overlays to GoPro videos.

For detailed usage instructions for each script, visit the respective folders.

## TV Show Organizer

This folder includes scripts for organizing and renaming TV show episodes.

- `organize_tv_shows.sh`: Automatically organizes TV show files into appropriate folders.

## Utilities

This folder contains general utility scripts for different tasks.

- `cleanup_files.sh`: Cleans up unnecessary or duplicate files in your directory.
- `batch_rename.sh`: Batch renames files based on a pattern.

## Usage

### Prerequisites

- Bash (or similar shell)
- Necessary dependencies (e.g., FFmpeg, exiftool)
- Ensure scripts are executable (e.g., `chmod +x script_name.sh`)

### Running Scripts

To use a script, simply run it in your terminal, passing in the required arguments. For example:

```bash
./video_processing/convert_video.sh input_video.mp4 output_video.mkv
