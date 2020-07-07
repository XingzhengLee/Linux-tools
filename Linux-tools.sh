#!/bin/bash

# find
find
find -path [filepath] -name 'filename' [-maxdepth n] [-mindepth n] [-newer filename]
find -path [filepath] -name 'filename' [-type f|d|...] [-mtime +|-day] [-size +|-...c|w|k|M|...] [-perm 755|644|...]
find -path [filepath] -name 'filename' | xargs rm -rf {} \;
find -path [filepath] -name 'filename' -exec cp -r {} /temp/ \;

# grep
grep [-a|c|i|n|v|...] [--color] '^character' [filename]
grep [-n|v|i|w|o|R|r|I|E|c|A|B|C|...] [--color] '^character' [filename]
-n --line-number
-c --count
-i --ignore-case
-f --file (dictionary)
-v --revert-match
-w --word-regexp

# egrep
egrep --color "([0-9]{1,3}\.){3}[0-9]{1,3}$" [filename]

# regular expression
^
$
.
?
*
+
.*
[]
[^]
(...)
<
>
x{m}
x{m,n}
...

# sed (add remove check change)
sed [-i|i.bak|n|r|...] 's/.../.../g' [filename]
sed 's#...#...#g' filename
sed -n '24p' [filename]
sed -n '4,24p' [filename]
sed -E
-U
-u
-L
-l

# awk
awk [-F:|\t|...] 'condition {action}' [filename]
awk '{print $1",|:|..."$(NF-1)}' [filename]
awk 'NR>3' [filename]
awk '$3~/regular expression/' [filename]
awk -F: '$NF~/nologin$/'
awk 'BEGIN{} {} END{}' [filename]
awk 'BEGIN{FS=':';OFS='\t'} {} END{}' [filename]

# put parameters into a file
#!/usr/bin/awk -F: -f
# pattern { stmts;}
!/^#/ && !/^$/ {
	print $1
}
cat [filename] | *.awk

substr(s,m,n)
index(s,t)
match(s,r)
split(s,a,fs)
sub(r,t,s)
gsub(r,t,s)
tolower(str)
toupper(str)
