mkdir models && cd models
# Download qwen-1.5-0.5b-q4_k.mllm

if [ -e qwen-1.5-0.5b-q4_k.mllm ]
    echo "Model file mllm already exists"
else
    wget https://huggingface.co/mllmTeam/qwen-1.5-0.5b-mllm/resolve/main/qwen-1.5-0.5b-q4_k.mllm?download=true  -O qwen-1.5-0.5b-q4_k.mllm
fi