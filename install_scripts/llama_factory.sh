# Installation scripts for llama-factory.
# The URL is https://github.com/hiyouga/LLaMA-Factory
#


# requirement
# torch transformers datasets accelerate peft trl
# optional
# deepspeed bitsandbytes vllm flash-attn


git clone --depth 1 https://github.com/hiyouga/LLaMA-Factory.git
cd LLaMA-Factory
pip install -e ".[torch,metrics]"


