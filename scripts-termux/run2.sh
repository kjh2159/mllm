if [ -z "$1" ]; then
    RUN="stream_qwen"
else
    RUN=$1
fi

#su -c "input touchscreen keyevent 26"

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"

# CPU 16 RAM 12
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
#su -c 'taskset f0 ./bin-arm/"$RUN" \
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 12

sleep 600

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"

# CPU 12 RAM 12
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 12 \
  --ram 12

sleep 480

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 10 RAM 12
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 12

sleep 420

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 8 RAM 12
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 12

sleep 300

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 6 RAM 12
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 12

sleep 240

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 2 RAM 12
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 2 \
  --ram 12

sleep 120

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 0 RAM 12
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 12

sleep 60

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 16 RAM 11
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 11

sleep 600

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 12 RAM 11
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 12 \
  --ram 11

sleep 480

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 10 RAM 11
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 11

sleep 420

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 8 RAM 11
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 11

sleep 300

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 6 RAM 11
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 11

sleep 240

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 2 RAM 11
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 2 \
  --ram 11

sleep 120

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 0 RAM 11
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 11

sleep 60

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 16 RAM 10
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 10

sleep 600

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 12 RAM 10
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 12 \
  --ram 10

sleep 480

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 10 RAM 10
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 10

sleep 420

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 8 RAM 10
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 10

sleep 300

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 6 RAM 10
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 10

sleep 240

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 2 RAM 10
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 2 \
  --ram 10

sleep 120

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 0 RAM 10
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 10

sleep 60

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 16 RAM 9
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 9

sleep 600

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 12 RAM 9
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 12 \
  --ram 9

sleep 480

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 10 RAM 9
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 9

sleep 420

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 8 RAM 9
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 9

sleep 300

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 6 RAM 9
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 9

sleep 240

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 2 RAM 9
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 2 \
  --ram 9

sleep 120

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 0 RAM 9
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 9

sleep 60

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 16 RAM 6
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 6

sleep 600

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 12 RAM 6
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 12 \
  --ram 6

sleep 480

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 10 RAM 6
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 6

sleep 420

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 8 RAM 6
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 6

sleep 300

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 6 RAM 6
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 6

sleep 240

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 2 RAM 6
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 2 \
  --ram 6

sleep 120

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 0 RAM 6
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 6

sleep 60

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 16 RAM 4
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 4

sleep 600

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"


# CPU 12 RAM 4
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 12 \
  --ram 4

sleep 480

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 10 RAM 4
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 4

sleep 420

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 8 RAM 4
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 4

sleep 300

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 6 RAM 4
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 4

sleep 240

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 2 RAM 4
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 2 \
  --ram 4

sleep 120

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 0 RAM 4
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 4

sleep 60

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 16 RAM 0
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 16 \
  --ram 0

sleep 600

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 12 RAM 0
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 12 \
  --ram 0

sleep 480

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 10 RAM 0
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 10 \
  --ram 0

sleep 420

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 8 RAM 0
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 8 \
  --ram 0

sleep 300

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 6 RAM 0
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 6 \
  --ram 0

sleep 240

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 2 RAM 0
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 2 \
  --ram 0

sleep 120

su -c "echo 0 > /sys/devices/system/cpu/cpu1/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu2/online"
su -c "echo 0 > /sys/devices/system/cpu/cpu3/online"



# CPU 0 RAM 0
su -c "echo 0 > /sys/class/backlight/panel0-backlight/brightness"
./bin-arm/"$RUN" \
  -m models/qwen-1.5-0.5b-q4_k.mllm \
  -v vocab/qwen_vocab.mllm \
  -e vocab/qwen_merges.txt \
  -b 0.5B \
  -t 4 \
  -l 4096 \
  -i 1 \
  -s 1 \
  -L 30 \
  -I dataset/hotpot_qa.csv \
  -O output/ \
  -S 0 \
  -D Pixel9 \
  --cpu 0 \
  --ram 0


#su -c "input touchscreen keyevent 26"
#su -c "input touchscreen keyevent 82"

su -c "echo 1023 > /sys/class/backlight/panel0-backlight/brightness"
