#!/bin/sh

echo "========================="
pwd
ls -al
cd "$(dirname "$0")"
env | grep -E '^(LC_|LANG|CYGWIN|MSYS|PATH)'
mount
echo "========================="

touch /test
ln -s /test /test2

ls -al /
tree -C -N --noreport -I "*[a-z]*" /

# touch files/readable
# chmod a=,u+r files/readable
# [ -r files/readable ]
# echo "files/readable is readable $?"
#
# touch files/writable
# chmod a=,u+w files/writable
# [ -w files/writable ]
# echo "files/writable is writable $?"
#
# touch files/executable
# chmod a=,u+x files/executable
# [ -x files/executable ]
# echo "files/executable is executable $?"
#
# touch files/no-permission
# chmod a= files/no-permission
#
# touch files/setuid
# chmod a=,u+s files/setuid
# [ -u files/setuid ]
# echo "files/setuid is setuid $?"
#
# touch files/setgid
# chmod a=,g+s files/setgid
# [ -g files/setgid ]
# echo "files/setgid is setgid $?"
#
# echo
#
# echo "ls -al"
#
# ls -al
#
# echo
#
# echo "ls -al files"
# ls -al files
