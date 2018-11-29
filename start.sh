#!/usr/bin/env bash
TPU=asuilin
MODEL=resnet_224
export PYTHONPATH="$PYTHONPATH:$HOME/tpu/models"
python models/official/resnet/benchmark/resnet_benchmark.py \
          --tpu="$TPU" \
          --mode=train \
          --data_dir=gs://imagenett/data \
          --model_dir="gs://imagenett/model/$MODEL" \
          --train_batch_size=1024 \
          --train_steps=112590 \
          --iterations_per_loop=1251