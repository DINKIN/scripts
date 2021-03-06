@ECHO OFF
SetLocal EnableDelayedExpansion

//Pipe twitch steams/VODs to VLC
streamlink --player="D:\Program Files (x86)\VideoLAN\VLC\vlc.exe" --player-passthrough hls https://www.twitch.tv/dota2ti best

//Steam folder backup
//Copy new files only
robocopy <sourcepath> <destination path> /E /XO /XN

//Copy new and updated files
robocopy <sourcepath> <destination path> /E /XO

Find what: (([^\n]*\n){x})[^\n]*\n - replace every nth line if you replace a by x - 1 
Replace with: $1
