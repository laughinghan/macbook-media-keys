set pipe to "/tmp/macbook-media-keys-pipe"

try
    do shell script "[[ -p " & pipe & " ]] && echo 'Play/Paused pressed' > " & pipe -- re: "do shell script", see http://developer.apple.com/library/mac/#technotes/tn2065/_index.html
on error errMsg number errorNumber
    tell application "iTunes"
        if player state is not playing then -- re: "player state", see http://dougscripts.com/itunes/itinfo/info02.php
            play
        else
            pause
        end
    end tell
end try
