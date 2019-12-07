#!/bin/bash

amixer set Master 5%+
a=`amixer get Master |grep % |awk '{print $5}'|sed -e 's/\[//' -e 's/\]//'`
notify-send "Volume up(${a:0:3})"

