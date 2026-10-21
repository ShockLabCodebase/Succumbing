# Data tables

Numbers collected across papers, for comparison with the lab's measurements and the PyFR runs, and for plotting. Every row cites its source as a note key plus the page in the paper, so each value can be traced back to its PDF. The notes are the source; check a value against the PDF before publishing it, especially those marked as read from a figure.

Conventions for all tables:
- UTF-8 CSV with a header row. Leave a cell empty when a value is not given; never guess.
- `note`: the note key (filename without `.md` in `../notes/`). `library.py check` fails if the note does not exist.
- `page`: page reference as written in the note, e.g. `p. 7` or `Table 2, p. 5`.
- `how`: `table` (from a table or the text), `figure` (read off a plot), or `derived` (computed from stated values; say how in `comment`).
- Ranges go in two rows rather than one cell, unless the paper gives only a range (then `"2.1–2.3"` in a text column and `comment` says so).
- `/add-paper` appends rows when a new paper reports values of these kinds; add a new table here (and a section below) when a new kind of value recurs across papers.

## `screech_tones.csv`
Screech (and other jet-resonance) tone frequencies.

| Column | Meaning |
| --- | --- |
| `note`, `page`, `how`, `comment` | As above |
| `nozzle` | `round-convergent`, `round-CD`, `rectangular`, `elliptical`, `twin-round`, `twin-rectangular`, … |
| `AR` | Aspect ratio (1 for round) |
| `s_D` | Twin-jet spacing s/D (empty for single jets) |
| `M_d` | Design Mach number |
| `NPR` | Nozzle pressure ratio p0/p∞ |
| `M_j` | Fully expanded Mach number |
| `TR` | Stagnation-to-ambient temperature ratio (1 for cold) |
| `mode` | A1, A2, B, C, D, flapping, helical, … as named in the paper |
| `m` | Azimuthal mode number or symmetry label if given |
| `St` | Strouhal number as defined in `St_def` |
| `St_def` | e.g. `f D/U_j`, `f D_j/U_j`, `f h/U_j`, `f D_e/U_j` |
| `f_Hz` | Frequency in Hz if given |
| `D_mm` | Nozzle exit diameter or height used in St, mm |

## `shock_cell_spacing.csv`
Shock-cell spacing measurements and models. The models and their trends are reviewed on [shock-cell-models](../topics/shock-cell-models.md).

| Column | Meaning |
| --- | --- |
| `note`, `page`, `how`, `comment` | As above |
| `nozzle`, `AR`, `M_d`, `NPR`, `M_j`, `TR` | As in `screech_tones.csv` |
| `cell` | Cell index (1 = first) or `mean` |
| `Ls_D` | Spacing over the length scale in `Ls_def` |
| `Ls_def` | e.g. `L_s/D`, `L_s/D_j`, `L_s/h` |
| `source_type` | `experiment`, `LES`, `RANS`, `model` |

## `impinging_tones.csv`
Impinging-jet and jet–edge tones.

| Column | Meaning |
| --- | --- |
| `note`, `page`, `how`, `comment` | As above |
| `nozzle`, `M_d`, `NPR`, `M_j`, `TR` | As above |
| `surface` | `flat-plate`, `cylinder`, `hemisphere`, `inclined-plate`, `edge`, … |
| `h_D` | Stand-off (or edge) distance over D |
| `mode` | Mode label (helical, toroidal, flapping, N, …) |
| `St`, `St_def`, `f_Hz`, `D_mm` | As in `screech_tones.csv` |

## `rocket_noise.csv`
Launch-vehicle, rocket-motor and high-power jet noise parameters.

| Column | Meaning |
| --- | --- |
| `note`, `page`, `how`, `comment` | As above |
| `vehicle` | Vehicle or motor, e.g. `Falcon 9`, `SLS Artemis I`, `RSRM`, `GEM-60`, `F404 (afterburner)` |
| `event` | `launch`, `static-firing`, `landing`, `ascent-boom`, `model`, … |
| `D_e_m` | Nozzle exit diameter, m (equivalent diameter for clusters; say so in `comment`) |
| `U_e_m_s`, `M_e` | Exit velocity (m/s) and Mach number |
| `OAPWL_dB` | Overall sound power level, dB re 1 pW |
| `eta_pct` | Acoustic efficiency, % |
| `peak_dir_deg` | Peak directivity angle from the plume axis, degrees |
| `source_x_De` | Apparent source location (x/D_e), with frequency in `comment` if frequency dependent |
| `peak_f_Hz`, `peak_Sr` | Spectral peak frequency and Strouhal number (definition in `comment`) |
| `OASPL_max_dB`, `distance_m` | Maximum OASPL and the distance it was measured at |
