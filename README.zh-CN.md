# Python环境配置

## 概述
这个仓库是我各种python环境的配置文件。
我构建这个仓库的目的，是为了能够以声明的方式，统一我在多台设备上的虚拟环境。

**约定的做法是：**
每当环境发生变化，修改配置文件。接着，销毁并重建整个环境。

## 管理方法
### pip
requirements.txt文件。最基础和通用的，需要结合venv，不是最好的。
### conda
environment.yaml文件。conda在数据科学领域有非常重要的地位。conda可以方便复用环境，隔离最彻底，但速度慢。
### uv
pyproject.toml文件。最新的工具，速度快且好用。社区近期有2个标志，pytorch放弃了conda，vllm使用uv。
### shell
脚本安装。最彻底的管理。常见场景为git源码安装并进行设置。

## 主要包括
### agent_env
Agent开发的基础环境。我学会了很多agent-framework，最终发现目前最好用的是langchain+langgraph社区。
### dl_env
深度学习任务基础环境。
### ds_env
数据科学研究基础环境。
### spider_env
爬虫开发环境。
### web_env
后端开发环境。


## 如何使用


## 更多

