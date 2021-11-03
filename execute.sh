date
echo "Here we go"

python3 run_squad.py \
--model_type roberta \
--model_name_or_path roberta-large \
--do_train \
--do_eval \
--version_2_with_negative \
--train_file data/dolly/train-aug-0.2_over.json \
--predict_file data/dev-v2.0.json \
--learning_rate 5e-5 \
--num_train_epochs 3 \
--max_seq_length 384  \
--doc_stride 128 \
--output_dir output/nine/ \
--per_gpu_eval_batch_size=8  \
--per_gpu_train_batch_size=8 \
--save_steps 5000

echo "=============================The END======================================"
date
