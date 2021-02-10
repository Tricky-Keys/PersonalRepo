# Regex for mulan


First I begin by find and replacinng all &, <, and >. Rplaceing with &amp, &lt, &gt respectivly.

Then  I capture every paragraph with (^.+?)(\n{2}) and replace with <sp>\1</sp>\2 to set speaker tags.

After i did the stage directions with \[(.+?)\] and replace with to keep the square brackets.

This point i had trouble properly capturing the specific speakers with out just doing each in by one.




