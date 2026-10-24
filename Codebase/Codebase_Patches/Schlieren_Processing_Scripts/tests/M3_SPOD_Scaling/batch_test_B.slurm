#!/bin/bash
#SBATCH --job-name=spod-batch-B
#SBATCH --account=ty79
#SBATCH --partition=m3h
#SBATCH --qos=m3h
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --mem=300G
#SBATCH --time=6:00:00
#SBATCH --output=/fs04/scratch2/ty79/JWeightman/Schlieren/Large_Test/Code/Batch_Test/Logs/batch_test_%j.out

# spod frequency-batch scaling on the 400k-frame case (2026-10-24): each
# variant in its own MATLAB, peak RSS from /usr/bin/time. Saves only small
# results files in Batch_Test/Results.
BT=/fs04/scratch2/ty79/JWeightman/Schlieren/Large_Test/Code/Batch_Test
cd "$BT"
module load matlab/r2024b
export TMPDIR=$BT/Tmp
mkdir -p "$TMPDIR" "$BT/Logs"
echo "SLURM_MEM_PER_NODE=$SLURM_MEM_PER_NODE on $(hostname)"
for v in auto; do
    echo "=== $v start $(date)"
    /usr/bin/time -v matlab -batch "try, spod_scaling('$v'); catch e, disp(getReport(e,'extended')); exit(1); end"         > "$BT/Logs/$v.log" 2> "$BT/Logs/$v.time"
    echo "=== $v exit $? at $(date); peak RSS: $(grep 'Maximum resident' "$BT/Logs/$v.time")"
done
