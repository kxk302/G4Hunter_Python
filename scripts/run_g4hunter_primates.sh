#!/bin/bash

#species_list=${1:-"Gorilla_gorilla Pan_troglodytes Symphalangus_syndactylus Homo_sapiens Pongo_abelii Pan_paniscus Pongo_pygmaeus"}
species_list=${1:-"Homo_sapiens"}
chromosome_list=${2:-"1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 X Y"}
window_size=${3:-"25"}
score=${4:-"1.5"}
input_folder=${5:-"./input"}
output_folder=${6:-"./output"}

for species in ${species_list}
do
  for chr in ${chromosome_list}
  do 
    if [ -f ${input_folder}/${species}/chr${chr}.fasta ]; then
      echo "Running G4Hunter for ${species}, chr${chr}"
      python2 ./scripts/G4Hunter.py -i ${input_folder}/${species}/chr${chr}.fasta -o ${output_folder}/${species}/ -w ${window_size} -s ${score}
    fi
  done
done
