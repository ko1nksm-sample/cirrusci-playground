#!/bin/sh

cd "$(dirname "$0")"

env | grep -E '^(LC_|LANG|CYGWIN|MSYS)'
mount

touch files/readable
chmod a=,u+r files/readable

touch files/writable
chmod a=,u+w files/writable

touch files/executable
chmod a=,u+w files/executable

touch files/no-permission
chmod a= files/no-permission

touch files/setuid
chmod a=,u+s files/setuid

touch files/setgid
chmod a=,g+s files/setgid

echo

echo "ls -al"

ls -al

echo

echo "ls -al files"
ls -al files
