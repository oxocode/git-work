#!/bin/bash

test "$1" && ronn $1 && mv -f ${1/.md/}.1.html ${1/.md/}.html && exit 0

echo '# manuals' > index.txt.tmp
ln=$(awk '/## COMMANDS/{print NR};'  ./git-work.md)
awk "NR <= $ln+1" git-work.md > git-work.md.tmp
for file in $(ls git*.md); do
  work=${file/.md/}
  spaced="                           "
  echo "$work(1)${spaced:${#work}}$work" >> index.txt.tmp;
  title=$(grep -m 1 $work"(1) -- " $file)
  test "$work" != "git-work" && echo "   - **"${title/" --"/"**"} >> git-work.md.tmp
done
ln=$(awk '/## AUTHOR/{print NR};'  ./git-work.md)
awk "NR >= $ln-1" git-work.md >> git-work.md.tmp && mv -f index.txt.tmp index.txt && mv -f git-work.md.tmp git-work.md

for file in $(ls git*.md); do
  work=${file/.md/}
  ronn $file && mv -f $work.1.html $work.html
done
