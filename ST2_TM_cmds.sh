#!/bin/bash

# using StringTie long read mode to make gtf files for the samples
stringtie -L RNA_nanopore.brain.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC.bam -o RNA_nanopore.brain.gtf -p 6 -v
stringtie -L RNA_nanopore.liver.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC.bam -o RNA_nanopore.liver.gtf -p 6 -v

# using tablemaker commands to produce .ctab files for ballgown
tablemaker -p 4 -q -W -G RNA_nanopore.brain.gtf -o output_brain RNA_nanopore.brain.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC.bam  --library-type fr-firststrand
tablemaker -p 4 -q -W -G RNA_nanopore.liver.gtf -o output_liver RNA_nanopore.liver.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC.bam  --library-type fr-firststrand
