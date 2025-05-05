#!/bin/bash
#SBATCH -J eval_humaneval_llada_conf_masklen-512_T-512
#SBATCH -o ./watch_folder/%x_%j.out  # output file (%j expands to jobID)
#SBATCH -N 1                          # Total number of nodes requested
#SBATCH --get-user-env                # retrieve the users login environment
#SBATCH --mem=32000                   # server memory requested (per node)
#SBATCH -t 24:00:00                   # Time limit (hh:mm:ss)
#SBATCH --partition=gpu               # Request partition
#SBATCH --constraint="[6000ada|a100|a40|a6000|h100]"
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:1                  # Type/number of GPUs needed
#SBATCH --open-mode=append            # Do not overwrite logs
#SBATCH --requeue                     # Requeue upon preemption
#SBATCH --exclude="jjs533-compute-01,jjs533-compute-02,rush-compute-02,elor-compute-02,joachims-compute-03"


export HF_ALLOW_CODE_EVAL=1
export HF_DATASETS_TRUST_REMOTE_CODE=true


GEN_LEN=512
STEPS=512
SAMPLER="llada_conf"
CKPT="GSAI-ML/LLaDA-8B-Base"
OUT_DIR="/share/kuleshov/gw354/NeurIPS-2025/LLaDA/outputs/humaneval/llada_conf"
output_path="${OUT_DIR}/genlen-${GEN_LEN}_T-${SAMPLING_STEPS}"
generated_samples_path="${output_path}.json"


srun python -u -m eval_llada \
    --tasks humaneval \
    --model llada_dist \
    --confirm_run_unsafe_code \
    --output_path ${OUT_DIR} \
    --limit 1 \
    --model_args model_path="${CKPT}",gen_length=${GEN_LEN},steps=${STEPS},sampler=${SAMPLER}
