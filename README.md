# Python Environment Configs
 
## Overview
This repository is a collection of configuration files I use to manage Python virtual environments across multiple devices. My goal is to achieve consistent and efficient environment management through a declarative approach.

**The convention is:** whenever the environment configuration changes, I only modify the corresponding configuration file, then destroy and recreate the entire environment. This ensures that the environments on all devices are perfectly identical.


## Management Methods
I use various tools to manage different environments, each with its unique advantages and use cases:
- **pip:** Based on a requirements.txt file. This is the most basic and universal method, but it needs to be combined with venv and isn't the best approach on its own.
- **conda:** Based on an environment.yaml file. This is a dominant tool in data science, capable of completely isolating environments for easy reuse, but it can be slow.
- **uv:** Based on a pyproject.toml file. This is a newer, fast, and user-friendly tool. Recent community indicators include PyTorch moving away from Conda and vLLM adopting uv.
- **shell:** Scripted installation. This is the most thorough management method, typically used for installing Git source code and performing custom configurations.


## General Base Environments
I've pre-built base environments for my common tasks, including:
- **agent_env:** A base environment for developing agents, currently centered around LangChain and LangGraph.
- **dl_env:** A base environment for deep learning tasks, specifically for model design and training.
- **ds_env:** A base environment for data science research, commonly used for data analysis and visualization.
- **llm_env:** A base environment for running, deploying, and training large language models (LLMs).
- **spider_env:** A dedicated environment for web scraping development.
- **web_env:** A base environment for back-end development.

Of course, there are many more configuration files in this repository. You can explore them in the specific_projects directory.


## How to use
The following is an example based on `conda`, mainly because of its long-standing influence in scientific computing. However, I plan to migrate to uv and pixi in the future.

### Check env
First, check for existing virtual environments.
```shell
conda env list
```

### Rebuild env
If an old environment exists, remove it.
```shell
conda deactivate
conda remove --name ${env_name} --all
```
Then, rebuild the environment from the configuration file.

Create the new environment via the configuration file.
```shell
conda env create -f ./environment.yaml
```

### Check dependencies
Finally, check if the dependencies have been installed in the environment.
```shell
conda activate ${env_name}
conda list
```

These commands can be found in the `run.sh` file. 


## Future Plans
I plan to further expand this repository to include more advanced and comprehensive environment management solutions:
- **Next-generation tools:** I will be adding tools like uv and pixi. For now, I primarily use Conda to maintain compatibility for research tasks, but I'll be using the newer tools for personal projects.
- **Docker:** Deploying a development environment with Docker is the most thorough method. The reasons I haven't done so yet are:
  - Local Docker requires significant resources.
  - Public servers may lack the necessary permissions or conditions.


## Related Projects
Other toolkits I maintain that you might find useful:
- **[Python-Environment-Configs](https://github.com/yuliu625/Yu-Python-Environment-Configs)**: Environment configurations for the Python toolchain (Pip, Conda, UV, etc.).
- **[Deployment-Toolkit](https://github.com/yuliu625/Yu-Deployment-Toolkit)**: A collection of native OS scripts (Shell/PowerShell).
- **[CLI-Wrapper](https://github.com/yuliu625/Yu-CLI-Wrapper)**: A Python-wrapped set of complex CLI tools for safer, friendlier operations.

