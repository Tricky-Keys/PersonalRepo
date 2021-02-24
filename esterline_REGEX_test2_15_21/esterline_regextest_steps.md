# regex test Isaac E

With the dot matches all unchecked, it doesnt pick up all of the new lines. With dot matches all turned on it will capture
the entire line starting from new lines. With dot matches all on it is much more aggressive in what it grabs. In this case
we want to capture as much as possible so dot matches all should be turned on.

\1 and \2 are capture groups refering to what ever we have in parenthesis in the find window in sequential order. These allow
us to preserve what is in the capture group and more easily add in our tags.

The goal of this expression is to find what ever text is surrounded by parenthesis (\()(.+)(\)). It is important to escape both
of the parens with a \ character so regex knows I am not trying to make a capture group. In this section I found turning 
dot matchs all off was much more helpful and precise. The replace was <stage>\1\2\3</stage>.

For capturing the speakers I used this expression: (<sp>)(.+)(\:). Turning dot matches all of again made the match much more 
precise than with it on. With the help of the extremely powerful capture groups it was easy to make this replace 
\1<speaker>\2\3</speaker>.    




