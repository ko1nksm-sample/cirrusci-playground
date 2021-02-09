#!/bin/sh

echo "start"
echo "foo:bar:baz" | read -d ":" line
echo "$line"
echo "end"
