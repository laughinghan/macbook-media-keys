set pipe to "/tmp/macbook-media-keys-pipe"

try
    do shell script "[[ -p " & pipe & " ]] && echo 'Play/Paused pressed' > " & pipe -- http://developer.apple.com/library/mac/#technotes/tn2065/_index.html
on error errMsg number errorNumber
    tell app "iTunes" to play
end try
