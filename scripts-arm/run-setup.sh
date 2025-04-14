#!/bin/bash
# RUN
# mllm/~$ sh scripts-arm/run-setup.sh
#

# configurations
TARGET_PATH="/data/local/tmp/mllm/"
MODEL="models/qwen-1.5-0.5b-q4_k.mllm"
VOCAB="vocab/qwen_vocab.mllm"
MERGE="vocab/qwen_merges.txt"
DATASET="dataset/hotpot_qa.csv"
SCRIPT="run.sh"
RUN_FILE="stream_qwen"
#"run_qwen"

# check directory (essential)
adb shell "su -c 'chmod -R 777 /data/local/tmp/mllm'"
adb shell '[ -d /data/local/tmp/mllm/bin ] || mkdir -p /data/local/tmp/mllm/bin'
adb shell '[ -d /data/local/tmp/mllm/models ] || mkdir -p /data/local/tmp/mllm/models'
adb shell '[ -d /data/local/tmp/mllm/vocab ] || mkdir -p /data/local/tmp/mllm/vocab'
adb shell '[ -d /data/local/tmp/mllm/scripts ] || mkdir -p /data/local/tmp/mllm/scripts'
adb shell '[ -d /data/local/tmp/mllm/dataset ] || mkdir -p /data/local/tmp/mllm/dataset'
adb shell '[ -d /data/local/tmp/mllm/output ] || mkdir -p /data/local/tmp/mllm/output'

# check executable directory
adb shell '[ -x /data/local/tmp/mllm ] || chmod -R 777 /data/local/tmp/mllm'
if [ $? -ne 0 ]; then
    echo "Operation Denied"
fi

adb shell "su -c '[ -x /data/local/tmp/mllm ] || chmod -R 777 /data/local/tmp/mllm'"
if [ $? -ne 0 ]; then
    echo "Root Authority Denied"
    exit 1
fi
echo directory is executable

# push files
# first, please place the model files in the direcotry mllm/models/
# model
adb shell "[ -f $TARGET_PATH$MODEL ]" || adb push "$MODEL" "$TARGET_PATH/models"
if [ $? -eq 0 ]; then
    echo "$MODEL is pushed"
else
    echo "[ERROR] $MODEL is not pushed"
fi
# vocab
adb shell "[ -f $TARGET_PATH$VOCAB ]" || adb push "$VOCAB" "$TARGET_PATH/vocab"
if [ $? -eq 0 ]; then
    echo "$VOCAB is pushed"
else
    echo "[ERROR] $VOCAB is not pushed"
fi
# merge
adb shell "[ -f $TARGET_PATH$MERGE ]" || adb push "$MERGE" "$TARGET_PATH/vocab"
if [ $? -eq 0 ]; then
    echo "$MERGE is pushed"
else
    echo "[ERROR] $MERGE is not pushed"
fi
# dataset
adb shell "[ -f $TARGET_PATH$DATASET ]" || adb push "$DATASET" "$TARGET_PATH/dataset"
if [ $? -eq 0 ]; then
    echo "$DATASET is pushed"
else
    echo "[ERROR] $DATASET is not pushed"
fi
# run-file
adb shell "[ -f '$TARGET_PATH'bin/$RUN_FILE ]" || adb push "bin-arm/$RUN_FILE" "$TARGET_PATH/bin"
if [ $? -eq 0 ]; then
    adb push "bin-arm/$RUN_FILE" "$TARGET_PATH/bin"
    echo "$RUN_FILE is pushed"
else
    echo "[ERROR] $RUN_FILE is not pushed"
fi
# script
adb shell "[ -f '$TARGET_PATH'/scripts/$SCRIPT ]" || adb push "scripts-arm/$SCRIPT" "$TARGET_PATH/scripts"
if [ $? -eq 0 ]; then
    echo "$SCRIPT is pushed"
else
    echo "[ERROR] $SCRIPT is not pushed"
fi

adb shell "su -c '[ -x /data/local/tmp/mllm ] || chmod -R 777 /data/local/tmp/mllm'"
if [ $? -ne 0 ]; then
    echo "Root Authority Denied"
    exit 1
fi
echo directory is executable