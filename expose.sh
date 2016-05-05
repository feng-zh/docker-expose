#!/bin/sh

case $1 in
/*)
        echo Connecting to unix socket file $1...
        exec socat -d -d -t 100000000 TCP4-LISTEN:$2,reuseaddr,fork UNIX-CONNECT:$1
;;
esac
