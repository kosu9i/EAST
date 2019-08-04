#!/bin/bash

DIRS=(
#predict_valid_20190803/model.ckpt-1011
#predict_valid_20190803/model.ckpt-2021
#predict_valid_20190803/model.ckpt-3031
#predict_valid_20190803/model.ckpt-4041
predict_valid_20190803/model.ckpt-5051
predict_valid_20190803/model.ckpt-6061
predict_valid_20190803/model.ckpt-7071
predict_valid_20190803/model.ckpt-8081
predict_valid_20190803/model.ckpt-9091
#predict_valid_20190803/model.ckpt-10101
#predict_valid_20190803/model.ckpt-11111
#predict_valid_20190803/model.ckpt-12121
#predict_valid_20190803/model.ckpt-13131
#predict_valid_20190803/model.ckpt-14141
#predict_valid_20190803/model.ckpt-15151
#predict_valid_20190803/model.ckpt-16161
#predict_valid_20190803/model.ckpt-17171
#predict_valid_20190803/model.ckpt-18181
#predict_valid_20190803/model.ckpt-19191
)

for dir in ${DIRS[@]}
do
    base=`basename $dir`
    mkdir -p ./predict_valid_20190803_for_metrics/$base
    ./convert_predict_for_metrics.py \
        $dir \
        ./predict_valid_20190803_for_metrics/$base
done
