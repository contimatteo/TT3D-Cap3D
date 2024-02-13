###


exit 1


ROOT_DIR="/media/data2/mconti/TT3D"
CKPTS_DIR="${ROOT_DIR}/checkpoints/Cap3D"


###


mkdir -p ${CKPTS_DIR}
wget -nc "https://huggingface.co/datasets/tiange/Cap3D/resolve/main/our_finetuned_models/pointE_finetuned_with_330kdata.pth" -P ${CKPTS_DIR}

rm -rf ./model_ckpts/
mkdir ./model_ckpts/
cd ./model_ckpts/
ln -s "${CKPTS_DIR}/pointE_finetuned_with_330kdata.pth"
