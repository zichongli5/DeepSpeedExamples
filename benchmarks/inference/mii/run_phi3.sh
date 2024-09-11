# Copyright (c) Microsoft Corporation.
# SPDX-License-Identifier: Apache-2.0

# DeepSpeed Team

# Run benchmark
python ./run_benchmark.py \
        --model microsoft/Phi-3-mini-4k-instruct \
        --tp_size 1 \
        --num_replicas 1 \
        --max_ragged_batch_size 768 \
        --mean_prompt_length 1000 2000 4000 \
        --mean_max_new_tokens 128 256 512 \
        --max_prompt_length 4000 \
        --stream \
        --backend vllm \

### Gernerate the plots
python ./src/plot_th_lat.py --data_dirs /t-zichongli/speed_results

echo "Find figures in ./plots/ and log outputs in ./results/"