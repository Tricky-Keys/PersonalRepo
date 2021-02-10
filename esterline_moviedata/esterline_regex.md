# Regex steps for turning movie data into XML

First step was to wrap each line in a movie tag because each is an individual movie. This is done easily enough with ^.+ match.

Next step was to wrap the title of the movie in a title tag. Since we already wraped each movies line in a movie tag we can use the
movie start tag as a capture group infront of the titles. (<movie>)(.+?)\t followed by this replace \1<title>\2</title> will wrap 
each title up until the tab point.

The next element to be created is the date of the movie. Done in a differnt way then before I am capturing just 4 digits with a
4 digit match in \d{4}. <date>\0</date> Once I found my matches I wrapped each 4 digit combinattion in a date tag.

The 4th element to be created is the location element. I used this: (\t)(.+?)\t to capture the loaction data that was put inbetween
2 different tabs. \1<location>\2</location> this is the replace I ran. I accidently removed the extra tab by not using parens on the 
second \t.

The last element to create is runtime. I used 3 different capture groups to properly format the tagging here: (</location>)(.+?)(</movie>). 
This is followed my a 3 capture group replace \1<runtime>\2</runtime>\3.

I also did a &amp; replace at the end becasue i forgot to at the beginning and now my document validates.


