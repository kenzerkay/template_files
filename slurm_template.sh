# !/bin/bash --login

# SBATCH --job-name=test_job                          # Name of Job. Its whatever you want to call it.            
# SBATCH --ntasks=1                                   # Number of tasks. Number of hwardware processors           # SLURM defaults to 1 but we specify anyway
# SBATCH --constraint=amd20                           # Constriants limit jobs to certain hardware.           
# SBATCH --mem=10G                                    # Memory per node                                           # Specify "M", "G", "T" for MB, GB and TB respectively
# SBATCH --time=03:59:00                              # Wall time. How long you will reserve the resources.       # Format: "minutes", "hours:minutes:seconds" or "days-hours:minutes:seconds"
# SBATCH --output=%x-%j-SLURM.out                     # This will save your outputs to a file                     # %x: job name, %j: job ID


# #SBATCH --mail-type=ALL                             # Mail type, which events trigger email notifications
# #SBATCH --mail-user=*YOUR EMAIL HERE*               # Mail address 

# If you load up a conda environment this is how to do that
module purge 
source activate /home/username/miniforge3/            # Change the path to be the location of your enviornment manager.
conda activate MY_ENV

srun echo Hello 
srun conda env list 
