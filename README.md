# Yu-python-environment-configs
 
## Notes
This repository contains configuration files for my various Python environments. 

By default, these are pip's requirements.txt files, which can be changed if needed, e.g. to conda's environment.yaml files. 


## Include
- **dl_env:** Various dependency packages for deep learning.
- **ds_env:** Various dependency packages for data science.
- **spider_env:** Various dependency packages for web crawler.
- **web_env:** Various dependency packages for web application.

## How to use
### pip
```shell
pip install -r requiremnets.txt
```

### conda
```shell
conda env create -f environmnet.yaml -n env_name
```
or
```shell
conda install --file requirements.txt
```
