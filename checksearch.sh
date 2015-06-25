#!/bin/bash

#This is the shell script that uses locate database to find files.
#The default filetype is .prt and it removes hidden dotfiles and appledouble
#files that Netatalk writes.
#
#You can change the "home/user" to whatever directory you want the locate to
#return to limit your search. There's no other real customization needed.


PRTS=`locate "home/user" | fgrep -v "/." | fgrep .prt`

for i in $@; do
    REMN=$(echo "$PRTS" | grep "$i")
    if [ -z "$REMN" ]; then
        echo "$i is not ripped."

    else
        echo "$i looks like it's here."
        echo "$REMN" | head -n 100
    fi
    echo " "
done
