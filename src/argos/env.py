from pathlib import Path
from environs import Env

env = Env(expand_vars=True)
env_file_path = Path(f"{Path.home()}/.config/argos/.env")
if env_file_path.exists():
    env.read_env(env_file_path, recurse=False)

with env.prefixed("ARGOS_"):

    ARGOS_DATA_PATH = env("DATA_PATH")
