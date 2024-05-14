#!/bin/bash
if [[ $1 == "yuruyt" ]]
then
    yt-dlp -o "/home/Yunoxa/drives/main/YRYR/ゆるゆり_Archives/Websites/YouTube/Videos/%(channel)s/%(title)s/%(id)s" --write-info-json --write-comments --download-archive youtube-dl-archive.txt --prefer-ffmpeg --merge-output-format mkv --write-sub --all-subs --convert-subs srt --add-metadata --write-description --write-thumbnail "${@:2}"

    echo "Video(s) added to the Yuru Yuri archive. Thank you for your contribution."
elif [[ $1 == "yt" ]]
then
    yt-dlp -o "/home/Yunoxa/drives/main/Media/YouTube/Videos/%(channel)s/%(title)s/%(id)s" --write-info-json --write-comments --download-archive youtube-dl-archive.txt --prefer-ffmpeg --merge-output-format mkv --write-sub --all-subs --convert-subs srt --add-metadata --write-description --write-thumbnail "${@:2}"
elif [[ $1 == "-h" ]]
then
    echo "====== LIST OF ARGUMENTS ======"
    echo "yuruyt: Downloads youtube videos to the Yuru Yuri archive."
    echo "yt: Download youtube video to media library."
else
    echo "You must enter an argument. Type '-h' to see all."
fi
