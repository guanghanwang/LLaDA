export HF_ALLOW_CODE_EVAL=1
export HF_DATASETS_TRUST_REMOTE_CODE=true


# HumanEval LLaDA_conf
accelerate launch eval_llada.py --tasks humaneval --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/humaneval/llada_conf/genlen-512_T-512_blocksize-32" --model_args model_path='GSAI-ML/LLaDA-8B-Instruct',gen_length=512,sampling_steps=512,block_size=32,sampler='llada_conf'
cp ~/LLaDA/*.json ~/LLaDA/outputs/humaneval/llada_conf/genlen-512_T-512_blocksize-32/
rm ~/LLaDA/*.json

# # HumanEval LLaDA_random_remdm_loop_remdmnumber-32
# accelerate launch eval_llada.py --tasks humaneval --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/humaneval/llada_random_remdm_loop/genlen-512_T-512-remdmnumber-16" --model_args model_path='GSAI-ML/LLaDA-8B-Base',gen_length=512,steps=512,remdm_number=32,sampler='llada_random_remdm_loop'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/humaneval/llada_random_remdm_loop/genlen-512_T-512-remdmnumber-32/
# rm ~/LLaDA/*.json

# # HumanEval LLaDA_conf_remdm
# accelerate launch eval_llada.py --tasks humaneval --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/humaneval/llada_conf_remdm/genlen-512_T-512" --model_args model_path='GSAI-ML/LLaDA-8B-Base',gen_length=512,steps=512,sampler='llada_conf_remdm'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/humaneval/llada_conf_remdm/genlen-512_T-512/
# rm ~/LLaDA/*.json

# # HumanEval LLaDA_random_remdm
# accelerate launch eval_llada.py --tasks humaneval --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/humaneval/llada_random_remdm/genlen-512_T-512" --model_args model_path='GSAI-ML/LLaDA-8B-Base',gen_length=512,steps=512,sampler='llada_random_remdm'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/humaneval/llada_random_remdm/genlen-512_T-512/
# rm ~/LLaDA/*.json

# # HumanEval LLaDA_random
# accelerate launch eval_llada.py --tasks humaneval --model llada_dist --confirm_run_unsafe_code --output_path "./outputs/humaneval/llada_random/genlen-512_T-512" --model_args model_path='GSAI-ML/LLaDA-8B-Base',gen_length=512,steps=512,sampler='llada_random'
# cp ~/LLaDA/*.json ~/LLaDA/outputs/humaneval/llada_random/genlen-512_T-512/
# rm ~/LLaDA/*.json
