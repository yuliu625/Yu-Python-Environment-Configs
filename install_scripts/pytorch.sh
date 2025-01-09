# Installation scripts for pytorch.
# The URL is https://pytorch.org/ and https://pytorch.org/get-started/previous-versions/
# Pytorch downloads require the channel or index-url to be specified, so configuration file can be a bit tricky.


# It is better to install all related packages at the same time, with same version, thus to avoid all sort of  odd conflicts.


# pip
# gpu version
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
# cpu version
pip3 install torch torchvision torchaudio


# conda
# gpu version
conda install pytorch torchvision torchaudio pytorch-cuda=12.4 -c pytorch -c nvidia
# cpu version
conda install pytorch torchvision torchaudio cpuonly -c pytorch


