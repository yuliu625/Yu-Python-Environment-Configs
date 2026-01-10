# create env and install python
conda create -n llama_factory_env python=3.12

# activate env
conda activate llama_factory_env

# auto script
# git clone --depth 1 https://github.com/hiyouga/LLaMA-Factory.git  # need to clone the repo first
cd path/to/lama_factory_repo
pip install -e ".[torch,metrics]"

# env check
llamafactory-cli version
