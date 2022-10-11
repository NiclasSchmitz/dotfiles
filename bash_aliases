alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../../"

alias open="xdg-open"

alias info='info --vi-keys'

#alias yt-mp3="youtube-dl --extract-audio --audio-format 'mp3' --audio-quality 0"
alias yt-mp3="yt-dlp --extract-audio --audio-format 'mp3' --audio-quality 0"
#alias yt-video="youtube-dl -f bestvideo+bestaudio"
alias yt-video="yt-dlp -f bestvideo+bestaudio"

alias notes="cd $HOME/notes && nvim ."
#alias lofi="mpv --no-video --volume=40 https://www.youtube.com/watch?v=5qap5aO4i9A"
alias wttr="curl wttr.in"

alias gg="git grep -En"
