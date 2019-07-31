python3 multigpu_train.py \
    --gpu_list=0 \
    --input_size=512 \
    --batch_size_per_gpu=14 \
    --checkpoint_path=./model/ \
    --text_scale=512 \
    --training_data_path=../../data/for_EAST/train/ \
    --geometry=RBOX \
    --learning_rate=0.0001 \
    --num_readers=10 \
    --pretrained_model_path=./pretrained_model/resnet_v1_50.ckpt

