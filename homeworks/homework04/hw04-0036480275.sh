ls -ld /usr/share/gtk*
ls -ld /usr/share/locale/e?
egrep ".*[0-9]+.*" /usr/share/dict/words
egrep "^i.*[A-Z]{1}.*" /usr/share/dict/words
egrep "^[^aeiouAEIOU]+$" /usr/share/dict/words
egrep ".*[aeiouAEIOU][aeiouAEIOU]+.*" /usr/share/dict/words
egrep ".*ening$" /usr/share/dict/words | wc -l
egrep ".*'s$" /usr/share/dict/words | wc -l
egrep ".*[A-Z]$" /usr/share/dict/words | wc -l
egrep "^[:blank:]+.*" /usr/include/stdio.h
egrep "^/\*.*|^//.*|^\*.*|^\*/.*" /usr/include/stdio.h | wc -l
