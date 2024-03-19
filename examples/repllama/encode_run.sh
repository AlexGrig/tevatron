HF_TOKEN= CUDA_VISIBLE_DEVICES=0 python encode.py \
  --output_dir=temp \
  --model_name_or_path castorini/repllama-v1-7b-lora-passage \
  --tokenizer_name meta-llama/Llama-2-7b-hf \
  --per_device_eval_batch_size 16 \
  --p_max_len 512 \
  --dataset_name Tevatron/beir-corpus:scifact \
  --encoded_save_path beir_embedding_scifact/corpus_scifact.pkl