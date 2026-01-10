# Installation scripts for videoclip.
# The URL is https://github.com/facebookresearch/fairseq/blob/main/examples/MMPT/README.md


# requirement
#pip install transformers==3.4


git clone https://github.com/pytorch/fairseq
cd fairseq
pip install -e .  # also optionally follow fairseq README for apex installation for fp16 training.
export MKL_THREADING_LAYER=GNU  # fairseq may need this for numpy.


cd examples/MMPT  # MMPT can be in any folder, not necessarily under fairseq/examples.
pip install -e .

