# check env
conda env list


# rebuild env

# If the old env exists, remove it first.
conda deactivate
conda remove --name ds_env --all  # need to change the env name here


# create env via configuration file
conda env create -f ./environment.yaml


# check env
conda activate ds_env  # need to change the env name here
conda list

