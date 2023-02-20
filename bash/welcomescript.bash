#!/bin/bash

UTC=2
millisInDay=86400000

millis=$(date +%s%N | cut -b1-13)
millis=$(($millis + $UTC * 3600000))
millis=$(($millis % $millisInDay))

seconds=$(($millis / 1000 % 60))
minutes=$(($millis / 60000 % 60))
hours=$(($millis / 3600000 % 24))

# 1s = 1000, 1min = 60 000, 1h = 3 600 000
# 06:xx-11:59 = 21600000-43199999
# 12:xx-17:xx = 43200000-64799999
# 18:xx-21:xx = 64800000-79199999
# 22:xx-05:xx = 79200000-21599999 (requires more)

if [ $millis -ge 79200000 ] || [ $millis -le 21599999  ]
then
	echo -n "Good night "
elif [ $millis -le 43199999 ]
then
	echo -n "Good morning "
elif [ $millis -le 64799999 ]
then
	echo -n "Good day "
else
	echo -n "Good evening "
fi

echo "$(whoami | sed 's/./\u&/')!"
