# SPOD memory scaling on M3 (400k frames)

The benchmark behind §7.5 of `Library_of_Shock_Lab/Codebase_Notes/REVIEW_2026-10-22.md`. `spod_scaling.m` runs `spod` on the 400k-frame `Large_Test` case with 1, 4 or 8 frequency batches, or `max_memory_GB = "auto"`. It compares L and the mode shapes with the final SPOD file and saves only a small results file.

- `batch_test_A.slurm`: 1, 4 and 8 batches on a 750 GB job.
- `batch_test_B.slurm`: `"auto"` on a 300 GB job, to check that the budget follows the SLURM allocation.

Paths are for `/fs04/scratch2/ty79/JWeightman/Schlieren/Large_Test`, with this folder's files and a copy of `Functions/` in `Code/Batch_Test/`. Peak memory comes from `/usr/bin/time -v`.
