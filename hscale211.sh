#!/bin/sh
touch /root/test/expand_another.file
echo "switch on expand_another"
sleep 1
rm -f /root/test/expand_another.file
echo "switch off"

