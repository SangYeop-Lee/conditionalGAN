SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
IMAGE=sylee/cgan
TAG=latest
NAME=sylee_cgan
SSD_DIR=/mnt/ssd

docker run -it \
    --gpus all \
    --net=host \
    -v ${SCRIPT_DIR}/../..:/workspace \
    -v ${SSD_DIR}:/workspace/ssd \
    --shm-size=64gb \
    --name=${NAME} \
    ${IMAGE}
