###

exit 1


GPU=0
ENV="test"
PROMPT="n1"
EXPERIMENT_PREFIX="t3bench/single"

ROOT_DIR="mconti/TT3D"
OUT_DIR="/media/data3/${ROOT_DIR}/outputs/${ENV}/${EXPERIMENT_PREFIX}/${PROMPT}"


###


CUDA_VISIBLE_DEVICES=${GPU} python3 tt3d_export.py \
  --source-path "${OUT_DIR}/Cap3D-ShapE/" \
  --skip-existing
