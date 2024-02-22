###

exit 1


GPU=0
ENV="test"
PROMPT="n1"
EXPERIMENT_PREFIX="t3bench/single"

ROOT_DIR="mconti/TT3D"
PROMPT_FILE="/media/data2/${ROOT_DIR}/prompts/${EXPERIMENT_PREFIX}/${PROMPT}.txt"
OUT_DIR="/media/data3/${ROOT_DIR}/outputs/${ENV}/${EXPERIMENT_PREFIX}/${PROMPT}"


###


CUDA_VISIBLE_DEVICES=${GPU} python3 tt3d_generate.py \
  --prompt-file $PROMPT_FILE \
  --out-path "${OUT_DIR}/Cap3D-ShapE/" \
  --skip-existing
