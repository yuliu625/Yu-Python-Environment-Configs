# Python环境配置

## 概述
这个仓库是我各种python环境的配置文件。
我构建这个仓库的目的，是为了能够以声明式方法统一管理我在多台设备上的虚拟环境。

**约定的做法是：**
每当环境发生变化，修改配置文件。接着，销毁并重建整个环境。

## 管理方法
- **pip:** requirements.txt文件。最基础和通用的，需要结合venv，不是最好的。
- **conda:** environment.yaml文件。conda在数据科学领域有非常重要的地位。conda可以方便复用环境，隔离最彻底，但速度慢。
- **uv:** pyproject.toml文件。最新的工具，速度快且好用。社区近期有2个标志，pytorch放弃了conda，vllm使用uv。
- **shell:** 脚本安装。最彻底的管理。常见场景为git源码安装并进行设置。

## 主要包括
- **agent_env:** Agent开发的基础环境。这里以我目前人为最好用的langchain+langgraph配置。
- **dl_env:** 深度学习任务基础环境。直接具体设计模型的场景。
- **ds_env:** 数据科学研究基础环境。数据分析和可视化常用环境。
- **llm_env:** LLM运行、部署、训练的基础环境。
- **spider_env:** 爬虫开发环境。
- **web_env:** 后端开发环境。

## 如何使用
以下以`conda`的配置为例，主要原因是conda在科学计算的影响过于久远。但我有计划迁移至`uv`和`pixi`。

### 检查已有环境
首先，检查已经存在的虚拟环境。
```shell
conda env list
```

### 重构环境
如果旧环境存在的话，移除它。
```shell
conda deactivate
conda remove --name ${env_name} --all
```
重建环境。
新环境通过配置文件构建。
```shell
conda env create -f ./environment.yaml
```

### 检查安装的包
最后，检查依赖是否已在环境中。
```shell
conda activate ${env_name}
conda list
```

这些命令可以在 `run.sh` 文件中查看。 

## 更多
之后，我会在这个仓库目前已有的基础上扩展新的管理方法，包括:
- 新一代的工具。包括`uv`、`pixi`。目前为了科研任务的兼容性依然使用conda。但在个人项目，我会使用新的工具。
- `docker`。以docker部署开发环境是最彻底的。目前没有这么做的原因是:
  - 本地docker真的很非资源。
  - 公用服务器可能并没有权限或条件。

