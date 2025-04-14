#!/bin/bash

#
# This shell script is run on termux
#

if [ -z "$1" ]; then
    RUN="stream_qwen"
else
    RUN=$1
fi

su -c "input keyevent 26"


# CPU 0 RAM 0
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 0

sleep 300

# CPU 0 RAM 4
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 4

sleep 300

# CPU 0 RAM 6
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 6

sleep 300

# CPU 0 RAM 9
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 9

sleep 300

# CPU 0 RAM 10
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 10

sleep 300

# CPU 0 RAM 11
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 11

sleep 300

# CPU 0 RAM 12
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 12

sleep 300

# CPU 2 RAM 0
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 2 \
  --ram 0

sleep 420

# CPU 2 RAM 4
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 2 \
  --ram 4

sleep 420

# CPU 2 RAM 6
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 2 \
  --ram 6

sleep 420

# CPU 2 RAM 9
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 2 \
  --ram 9

sleep 420

# CPU 2 RAM 10
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 2 \
  --ram 10

sleep 420

# CPU 2 RAM 11
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 2 \
  --ram 11

sleep 420

# CPU 2 RAM 12
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 12

sleep 420

# CPU 6 RAM 0
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 0

sleep 420

# CPU 6 RAM 4
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 4

sleep 420

# CPU 6 RAM 6
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 6

sleep 420

# CPU 6 RAM 9
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 9

sleep 420

# CPU 6 RAM 10
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 10

sleep 420

# CPU 6 RAM 11
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 11

sleep 420

# CPU 6 RAM 12
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 12

sleep 420

# CPU 8 RAM 0
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 0

sleep 540

# CPU 8 RAM 4
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 4

sleep 540

# CPU 8 RAM 6
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 6

sleep 540

# CPU 8 RAM 9
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 9

sleep 540

# CPU 8 RAM 10
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 10

sleep 540

# CPU 8 RAM 11
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 11

sleep 540

# CPU 8 RAM 12
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 12

sleep 540

# CPU 10 RAM 0
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 0

sleep 660

# CPU 10 RAM 4
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 4

sleep 660

# CPU 10 RAM 6
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 6

sleep 660

# CPU 10 RAM 9
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 9

sleep 660

# CPU 10 RAM 10
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 10

sleep 660

# CPU 10 RAM 11
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 11

sleep 660

# CPU 10 RAM 12
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 12

sleep 660

# CPU 12 RAM 0
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 12 \
  --ram 0

sleep 780

# CPU 12 RAM 4
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 12 \
  --ram 4

sleep 780

# CPU 12 RAM 6
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 12 \
  --ram 6

sleep 780

# CPU 12 RAM 9
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 12 \
  --ram 9

sleep 780

# CPU 12 RAM 10
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 12 \
  --ram 10

sleep 780

# CPU 12 RAM 11
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 12 \
  --ram 11

sleep 780

# CPU 12 RAM 12
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 12

sleep 780

# CPU 16 RAM 0
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 0

sleep 900

# CPU 16 RAM 4
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 4

sleep 900

# CPU 16 RAM 6
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 6

sleep 900

# CPU 16 RAM 9
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 9

sleep 900

# CPU 16 RAM 10
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 10

sleep 900

# CPU 16 RAM 11
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 11

sleep 900

# CPU 16 RAM 12
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 50 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 12

sleep 900

su -c "input keyevent 26"
su -c "input keyevent 82"
