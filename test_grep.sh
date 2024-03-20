#!/bin/bash

FAILURES=0

if [ ! -x ./grep ]; then
    echo "grep is not executable!"
    FAILURES=$((FAILURES + 1))
fi

if ! ./grep 1 FAKEFILE 2> /dev/null; then
    echo "grep test failed on FAKEFILE! (exit)"
    FAILURES=$(($FAILURES + 1))
fi

if [ $FAILURES -eq 0 ]; then
    echo "grep test successful!"
    exit 0
else
    echo "grep tests $FAILURES failures"
    exit 1
fi
