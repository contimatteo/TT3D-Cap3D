#!/bin/bash


CACHE_DIR="/media/data2/mconti/TT3D/cache/pip"


pip install -U --cache-dir ${CACHE_DIR} pip wheel setuptools
pip install --cache-dir ${CACHE_DIR} torch torchvision --index-url https://download.pytorch.org/whl/cu118
pip install -e .
pip install --cache-dir ${CACHE_DIR} pyyaml ipywidgets
