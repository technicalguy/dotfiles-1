#!/bin/sh
if [ -f "/usr/local/bin/mark" ]; then
    echo "found mark command"
else
    cp ./mark.sh /usr/local/bin/mark
    chmod 755 /usr/local/bin/mark
    echo "install mark command"
fi
