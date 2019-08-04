#!/bin/bash

GENERATIONS=(
#"model.ckpt-1011"
#"model.ckpt-2021"
#"model.ckpt-3031"
#"model.ckpt-4041"
#"model.ckpt-5051"
#"model.ckpt-6061"
#"model.ckpt-7071"
#"model.ckpt-8081"
#"model.ckpt-9091"
"model.ckpt-10101"
"model.ckpt-11111"
"model.ckpt-12121"
"model.ckpt-13131"
"model.ckpt-14141"
"model.ckpt-15151"
"model.ckpt-16161"
"model.ckpt-17171"
"model.ckpt-18181"
"model.ckpt-19191"
)

for gen in ${GENERATIONS[@]}; do
    python3 eval.py \
        --test_data_path=../../data/for_EAST/valid/ \
        --gpu_list=1 \
        --checkpoint_path=./model \
        --checkpoint_generation=${gen} \
        --output_dir=./predict_valid_20190803/${gen}/
done

