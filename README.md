# Environment setup

Python 2.7 is required!

1) Install virtualenv (if not already installed) via the following command:

> pip2 install virtualenv

2) Create a virtual environment called 'g4h_venv' via the following command:

> virtualenv --python=python2.7 g4h_venv

3) Activate the virtualenv via the following command:

> . ./g4h_venv/bin/activate

4) Install the G4hunter required packges in the virtualenv via the following command:

> pip2 install -r requirements.txt

5) Create the following directory structures

input\
├── Gorilla_gorilla\
├── Homo_sapiens\
├── Pan_paniscus\
├── Pan_troglodytes\
├── Pongo_abelii\
├── Pongo_pygmaeus\
├── Symphalangus_syndactylus

output\
├── Gorilla_gorilla\
├── Homo_sapiens\
├── Pan_paniscus\
├── Pan_troglodytes\
├── Pongo_abelii\
├── Pongo_pygmaeus\
├── Symphalangus_syndactylus

6) For each species, copy the fasta files (one for each chromosome) to the appropriate folder. Fasta files should be named chr1.fasta, ..., chr22.fatsa, chrX.fasta, and chrY.fasta.

7) Run G4Hunter for all species and all chromosomes via the following command:

> ./scripts/run_g4hunter_primates.sh

This shell script calls ./scripts/G4Hunter.py for for all species and all chromosomes in the ./input folder. The output files are written to the corresponding ./output folder. ./scripts/run_g4hunter_primates.sh takes 6 optional command line parameters, that can be overriden.

a. Window size (defaults to 25)\
b. G4Hunter score (defaults to 1.5)\
c. Species (deaults to "Gorilla_gorilla Pan_troglodytes Symphalangus_syndactylus Homo_sapiens Pongo_abelii Pan_paniscus Pongo_pygmaeus")\
d. Chromosomes (defaults to "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 X Y")\
e. Input folder (defaults to "./input")\
f. Output folder (defaults to "./output")

For each species and each chromosome, 2 output files are created. For eaxmple, for Gorilla_gorilla, chromosome 6, window size 25, and G4Hunter score 1.5, we get the following 2 files:

chr6-W25-S1.5-Merged.txt\
chr6-W25-S1.5.bed
