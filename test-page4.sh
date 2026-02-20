#!/bin/bash
# Regression test for page4.txt existence
# This test verifies that page4.txt exists with pizza content

if [ ! -f "page4.txt" ]; then
    echo "FAIL: page4.txt does not exist"
    exit 1
fi

LINES=$(wc -l < page4.txt)
if [ "$LINES" -lt 3 ]; then
    echo "FAIL: page4.txt has fewer than 3 lines (found $LINES)"
    exit 1
fi

echo "PASS: page4.txt exists with $LINES lines"
exit 0
