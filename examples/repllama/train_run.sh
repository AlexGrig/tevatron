train.py \
  --output_dir repllama_test \
  --model_name_or_path castorini/repllama-v1-7b-lora-passage \
  --save_steps 200 \
  --dataset_name Tevatron/msmarco-passage \
  --bf16 \
  --per_device_train_batch_size 32 \ # ?
  --per_device_eval_batch_size 32
  #--gradient_accumulation_steps 4 \ # ?
  #--gradient_checkpointing \ # ?
  --train_n_passages 16 \ #?
  --learning_rate 1e-4 \
  --q_max_len 32 \
  --p_max_len 196 \
  --num_train_epochs 1 \
  --logging_steps 10 \
  --overwrite_output_dir \
  --dataset_proc_num 32 \
  --negatives_x_device \
  --warmup_steps 100

# --model_name_or_path meta-llama/Llama-2-7b-hf