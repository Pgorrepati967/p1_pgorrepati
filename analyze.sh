#!/usr/bin/env bash
./gen_prompt.sh >/dev/null 2>&1

./ape ./google_gemma-3-4b-it-Q6_K.llamafile \
  -f prompt.txt \
  --silent-prompt \
  --temp 0 \
  --log-disable \
| fmt -w 80
