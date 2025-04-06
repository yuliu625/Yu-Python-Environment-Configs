# check env
conda env list


env_name='dl_env'
# rebuild env

# Keep a backup of the old environment, if needed.
#conda env export > dl_env.yaml

# If the old env exists, remove it first.
conda deactivate
conda remove --name ${env_name} --all  # need to change the env name here


# create env via configuration file
#conda env create -f ./environment.yaml
conda env create --file=./environment.yaml


# check env
conda activate ${env_name}  # need to change the env name here
conda list




# not recommend
# update env
conda env update -f ./environment.yaml

