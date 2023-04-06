python3 -m torch.distributed.launch --nproc_per_node=2 --master_port 29515 run_scimrc.py \
--learning_rate 1e-4 \
--model_name_or_path 't5-base' \
--output_dir your_output_dir \
--num_train_epochs 8 \
--per_device_train_batch_size 16 \
--per_device_eval_batch_size 16 \
--warmup_ratio 0.10 \
--fp16 false \
--eval_steps 500 \
--gradient_accumulation_steps 1 \
--evaluation_strategy 'steps' \
--logging_strategy 'steps' \
--save_strategy 'steps' \
--save_steps 500 \
--logging_steps 500 \
--train_file ./data/train.json \
--validation_file ./data/dev.json \
--test_file ./data/dev.json \
--max_source_length 512 \
--max_target_length 128 \
--pad_to_max_length false \
--source_prefix "Your source prefix " \
--do_train true \
--do_eval true \
--do_predict true \
--ddp_find_unused_parameters True \
--overwrite_output_dir True \
--prediction_loss_only False \
--load_best_model_at_end True \
--metric_for_best_model 'bleu' \
--predict_with_generate True \
--greater_is_better True \
--num_beams 10  \
--save_total_limit 3 \
--generation_max_length 128 \
--generation_num_beams 10 \
--seed 127 \
