#!/bin/bash

DATE=`date -I -d '-1 day'`

echo "Beginning run_all for puzzleDate $DATE"

uv run src/scrape.py -d $DATE
uv run src/analyze.py -d $DATE
uv run src/upload.py -d $DATE

echo "Finished run_all for puzzleDate $DATE"
