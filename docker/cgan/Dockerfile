FROM ubuntu:22.04 AS base-builder

ENV DEBIAN_FRONTEND noninteractive

USER root

##########################
#  Setup personal tools
##########################
RUN apt update && apt install -y --upgrade \
    build-essential \
    wget \
    zsh \
    tmux \
    tree \
    vim \
    curl \
    htop \
    less \
    software-properties-common \
    zip \
    ripgrep \
    python3-setuptools

######################################
#  Install python pip
######################################
curl https://bootstrap.pypa.io/get-pip.py | python3

######################################
#  Install jupyter
######################################
RUN python3 -m pip install notebook ipywidgets
RUN python3 -m pip install torch torchvision --index-url https://download.pytorch.org/whl/cu118
RUN python3 -m pip install matplotlib pandas image

# install frozenbilm related
WORKDIR /root
# RUN conda install pytorch torchvision cudatoolkit

ENV LC_ALL=C.UTF-8
WORKDIR /workspace

ENTRYPOINT [ "zsh", "-l" ]
