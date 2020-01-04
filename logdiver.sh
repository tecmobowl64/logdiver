#!/bin/bash
# Testing user input

echo Enter the name of the object you wish to locate.

read varname

query="zgrep -l "$varname" /home/rcooper/LogDiver/test*"

# Work on conditional statement
if [ "$query" ]; then
    echo $varname found in:
    $query
fi
if [ -z "$query" ]; then
    echo $varname not found.
fi
