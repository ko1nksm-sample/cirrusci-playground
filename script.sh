#!/bin/sh

cd "$(dirname "$0")"

env | grep -E '^(LC_|LANG|CYGWIN|MSYS)'
mount

ls -al /

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
