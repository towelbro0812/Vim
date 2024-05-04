#!/bin/bash
# cd <path_to_Vim>/vim;

python main.py \
    --model vim_tiny_patch16_224_bimambav2_final_pool_mean_abs_pos_embed_with_midclstok_div2 \
    --data-set OTHER\
    --epochs 300 \
    --batch-size 64 \
    --drop-path 0.0 \
    --weight-decay 0.1 \
    --num_workers 8 \
    --data-path /workspace/Vim/dataset/train_val \
    --output_dir ./output/test_mini_imnet
