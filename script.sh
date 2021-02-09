#!/bin/sh

echo "foo:bar:baz" | read -d ":" line
echo "$line"
echo "end"
