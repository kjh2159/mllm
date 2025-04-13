#!/bin/bash

#
# This shell script is run on terminal
#

if [ -z "$1" ]; then
    RUN="stream_qwen"
else
    RUN=$1
fi

adb shell 'cd /data/local/tmp/mllm/bin && ./"'"$RUN"'" \
  -m /data/local/tmp/mllm/models/qwen-1.5-0.5b-q4_k.mllm \
  -v /data/local/tmp/mllm/vocab/qwen_vocab.mllm \
  -e /data/local/tmp/mllm/vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 5 \
  -I /data/local/tmp/mllm/dataset/hotpot_qa.csv \
  -O /data/local/tmp/mllm/output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 12'
