#!/bin/bash

if [ -z "$CONDA_PREFIX" ]; then
    echo "Activate environment."
    exit 1
fi

pushd ${0%/*}
cp libcudart_activate.sh $CONDA_PREFIX/etc/conda/activate.d/
cp libcudart_deactivate.sh $CONDA_PREFIX/etc/conda/deactivate.d/
popd
