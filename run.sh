# check env
conda env list


# rebuild env
# if exist env
conda deactivate
conda remove --name ds_env --all  # need to change the env name here

# create env by configuration file
conda env create -f ./environment.yaml


# check env
conda activate ds_env  # need to change the env name here
conda list
