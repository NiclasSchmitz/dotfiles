alias ..='cd ..'
alias ...='cd ../..'

alias mkdir='mkdir -pv'

alias yt-mp3="youtube-dl --extract-audio --audio-format 'mp3' --audio-quality 0"
alias yt-video="youtube-dl -f bestvideo+bestaudio"
alias yt="youtube-dl --add-metadata -i"
alias yta="yt -x -f bestaudio/best"

alias open=xdg-open
