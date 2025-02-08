#!/bin/bash

# Cài đặt thư viện cần thiết
pip install hydra-core
pip install -r requirements.txt
pip install peft


# Chạy lệnh Python với tham số cụ thể
python main.py \
  +task_args='TACRED' \
  +training_args=Expert \
  training_args.num_description = 5 \
  task_args.model_name_or_path='bert-base-uncased' \
  task_args.config_name='configs/task_args/TACRED.yaml' \
  task_args.tokenizer_name='bert-base-uncased'

python main.py \
  +task_args='TACRED' \
  +training_args=EoE \
  training_args.num_description = 5 \
  task_args.model_name_or_path='bert-base-uncased' \
  task_args.config_name='configs/task_args/TACRED.yaml' \
  task_args.tokenizer_name='bert-base-uncased'

