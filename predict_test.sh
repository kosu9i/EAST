#!/bin/bash

python3 eval.py \
    --test_data_path=../../data/org/test_images/ \
    --gpu_list=0 \
    --checkpoint_path=./model \
    --checkpoint_generation=model.ckpt-4041 \
    --output_dir=./predict_test_20190803/
