#!/bin/bash
#SBATCH --job-name=hpodinv
#SBATCH --account=ty79
#SBATCH --partition=comp
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=160G
#SBATCH --time=12:00:00
#SBATCH --output=/fs04/scratch2/ty79/JWeightman/Schlieren/HPOD_Investigation/Logs/hpodinv_%j.out

# A1/A2 isolation study. STAGES picks the stages (default all):
#   1 projection pass over the 82 GB record, 2 isolation, 3 controls,
#   4 interactions, 5 figures.  e.g.  sbatch --export=ALL,STAGES="2 3" hpodinv.slurm
ROOT=/fs04/scratch2/ty79/JWeightman/Schlieren/HPOD_Investigation
cd "$ROOT/Code"
module load matlab/r2024b
export TMPDIR=$ROOT/tmp
mkdir -p "$TMPDIR" "$ROOT/Logs"
STAGES=${STAGES:-1 2 3 4 5}
# Storage rules: check ty79 first and every 60 s; stop at 95% (exit 75)
GUARD=/fs04/scratch2/ty79/JWeightman/PyFR_Staging/bin/quota_guard.sh
$GUARD /usr/bin/time -v matlab -batch "try, run_stage([$STAGES]); catch e, disp(getReport(e,'extended')); exit(1); end"
echo "exit $? at $(date)"
du -sh "$ROOT"
