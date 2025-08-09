# Yu-Python-Environment-Configs
 
## Overview
This repository contains configuration files for my various Python environments. 
My goal in building this repository is to unify my Python environment across devices via configuration files using a declarative approach. 

The desired approach is to always destroy the old environment first when it changes, and then rebuild the environment completely via the corresponding configuration file. 

By default, these are pip's requirements.txt files, which can be changed if needed, e.g. to conda's environment.yaml files. 


## Include
- **dl_env:** Various dependency packages for deep learning.
- **ds_env:** Various dependency packages for data science.
- **spider_env:** Various dependency packages for web crawler.
- **web_env:** Various dependency packages for web application.

## How to use
If necessary, modify the `environment.yaml`file and corresponding `requirements.txt`file, and then proceed.

### Check env
First, check the environments that are now in place.
```shell
conda env list
```

### Rebuild env
Remove the old environment if it exists.
```shell
conda deactivate
conda remove --name ${env_name} --all
```
Reconstruct the environment.  
Create the new environment via the configuration file.
```shell
conda env create -f ./environment.yaml
```

### Check dependencies
Finally, check for dependencies in the environment.
```shell
conda activate ${env_name}
conda list
```

These commands can be found in the `run.sh` file. 

## Moreover
In the future, I will integrate these configuration files into the corresponding devcontainer, and all the process will be fully declarative, scripted and automated. This is one of my larger goals, which is to be device-agnostic.
