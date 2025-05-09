export HF_ALLOW_CODE_EVAL=1
export HF_DATASETS_TRUST_REMOTE_CODE=true

# # Countdown LLaDA_conf
# accelerate launch eval_llada.py --tasks countdown3 --limit 256 --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/countdown3/llada_conf/genlen-128_T-128_blocksize-32" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=128,sampling_steps=128,block_size=32,sampler='llada_conf'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/countdown3/llada_conf/genlen-128_T-128_blocksize-32/
# rm ~/LLaDA/*.json

# # Countdown LLaDA_conf_remdm_loop_remdmnumber-1
# accelerate launch eval_llada.py --tasks countdown3 --limit 256 --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/countdown3/llada_conf_remdm_loop/genlen-128_T-128_blocksize-32_remdmnumber-1" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=128,sampling_steps=128,block_size=32,remdm_number=1,sampler='llada_conf_remdm_loop'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/countdown3/llada_conf_remdm_loop/genlen-128_T-128_blocksize-32_remdmnumber-1/
# rm ~/LLaDA/*.json

# # HumanEval LLaDA_conf_remdm_loop_remdmnumber-2
# accelerate launch eval_llada.py --tasks humaneval --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/humaneval/llada_conf_remdm_loop/genlen-256_T-256_blocksize-32_remdmnumber-2" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=256,sampling_steps=256,block_size=32,remdm_number=2,sampler='llada_conf_remdm_loop'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/humaneval/llada_conf_remdm_loop/genlen-256_T-256_blocksize-32_remdmnumber-2/
# rm ~/LLaDA/*.json

# # HumanEval LLaDA_conf
# accelerate launch eval_llada.py --tasks humaneval --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/humaneval/llada_conf/genlen-256_T-256_blocksize-32" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=256,sampling_steps=256,block_size=32,sampler='llada_conf'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/humaneval/llada_conf/genlen-256_T-256_blocksize-32/
# rm ~/LLaDA/*.json

# # MATH500 LLaDA_conf
# accelerate launch eval_llada.py --tasks math_500 --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/math_500/llada_conf/genlen-512_T-512_blocksize-32" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=512,sampling_steps=512,block_size=32,sampler='llada_conf'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/math_500/llada_conf/genlen-512_T-512_blocksize-32/
# rm ~/LLaDA/*.json

# # MATH500 LLaDA_conf_remdm_loop_remdmnumber-1
# accelerate launch eval_llada.py --tasks math_500 --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/math_500/llada_conf_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-1" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=512,sampling_steps=512,block_size=32,remdm_number=1,sampler='llada_conf_remdm_loop'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/math_500/llada_conf_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-1/
# rm ~/LLaDA/*.json

# # MBPP LLaDA_conf_remdm_loop_remdmnumber-2
# accelerate launch eval_llada.py --tasks mbpp --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/mbpp/llada_conf_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-2" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=512,sampling_steps=512,block_size=32,remdm_number=2,sampler='llada_conf_remdm_loop'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/mbpp/llada_conf_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-2/
# rm ~/LLaDA/*.json

# # MBPP LLaDA_conf
# accelerate launch eval_llada.py --tasks mbpp --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/mbpp/llada_conf/genlen-512_T-512_blocksize-32" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=512,sampling_steps=512,block_size=32,sampler='llada_conf'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/mbpp/llada_conf/genlen-512_T-512_blocksize-32/
# rm ~/LLaDA/*.json

# # MBPP LLaDA_conf_remdm_loop_remdmnumber-1
# accelerate launch eval_llada.py --tasks mbpp --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/mbpp/llada_conf_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-1" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=512,sampling_steps=512,block_size=32,remdm_number=1,sampler='llada_conf_remdm_loop'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/mbpp/llada_conf_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-1/
# rm ~/LLaDA/*.json

# # GSM8K LLaDA_conf_remdm_loop_remdmnumber-1
# accelerate launch eval_llada.py --tasks gsm8k --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/gsm8k/llada_conf_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-1" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=512,sampling_steps=512,remdm_number=1,block_size=32,sampler='llada_conf_remdm_loop'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/gsm8k/llada_conf_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-1/
# rm ~/LLaDA/*.json

# HumanEval LLaDA_conf_remdm
accelerate launch eval_llada.py --tasks humaneval --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/humaneval/llada_conf_remdm/genlen-512_T-512_blocksize-32" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=512,sampling_steps=512,block_size=32,sampler='llada_conf_remdm'
cp ~/LLaDA/*.json ~/LLaDA/outputs/humaneval/llada_conf_remdm/genlen-512_T-512_blocksize-32/
rm ~/LLaDA/*.json

# HumanEval LLaDA_random_remdm_loop_remdmnumber-2
accelerate launch eval_llada.py --tasks humaneval --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/humaneval/llada_random_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-2" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=512,sampling_steps=512,block_size=32,remdm_number=2,sampler='llada_random_remdm_loop'
cp ~/LLaDA/*.json ~/LLaDA/outputs/humaneval/llada_random_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-2/
rm ~/LLaDA/*.json

# HumanEval LLaDA_conf_remdm_loop_remdmnumber-1
accelerate launch eval_llada.py --tasks humaneval --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/humaneval/llada_conf_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-1" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=512,sampling_steps=512,block_size=32,remdm_number=1,sampler='llada_conf_remdm_loop'
cp ~/LLaDA/*.json ~/LLaDA/outputs/humaneval/llada_conf_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-1/
rm ~/LLaDA/*.json

# HumanEval LLaDA_random_remdm_loop_remdmnumber-1
accelerate launch eval_llada.py --tasks humaneval --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/humaneval/llada_random_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-1" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=512,sampling_steps=512,block_size=32,remdm_number=1,sampler='llada_random_remdm_loop'
cp ~/LLaDA/*.json ~/LLaDA/outputs/humaneval/llada_random_remdm_loop/genlen-512_T-512_blocksize-32_remdmnumber-1/
rm ~/LLaDA/*.json

# GSM8K LLaDA_conf
accelerate launch eval_llada.py --tasks gsm8k --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/gsm8k/llada_conf/genlen-512_T-512_blocksize-32" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',mask_length=512,sampling_steps=512,block_size=32,sampler='llada_conf'
cp ~/LLaDA/*.json ~/LLaDA/outputs/gsm8k/llada_conf/genlen-512_T-512_blocksize-32/
rm ~/LLaDA/*.json
