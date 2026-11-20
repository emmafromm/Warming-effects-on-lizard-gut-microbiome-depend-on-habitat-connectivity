# File : Arthropod_traits.xlsx
	# Table containing phenotypic and ecological traits of arthropod families. 
	# Includes taxonomic classification, NCBI taxonomic IDs, trophic group, wing presence (flight capability), cuticle hardness, and evasiveness score.
# File : krd_matrix.rds
	# Pairwise Kantorovich-Rubinstein (KR) distance matrix between arthropod microbiota samples.
	# Computed using Gappa from phylogenetic placement approach.
# File : krd_matrix_normalize.rds
	# Pairwise Kantorovich-Rubinstein (KR) normalized distance matrix of arthropod microbiota samples.
	# Computed using Gappa from phylogenetic placement approach and normalized by tree length.
# File : phylo_sample_matrix.rds
	# Host phylogenetic distance matrix between samples.
	# Samples from the same host have a distance of 0.
# File : phylum_abundance.csv
	# Dataframe of phylum-level abundances for each sample.
	# X1: sample identifier
	# X2: Bacterial phylum name
	# value: Abundance value
	# Year: Sampling year
	# Gpe_fct : Functional group of the sampled host
	# family: Taxonomic family of the sampled host
	# MesocosmID: Mesocosm identifier where the sample was collected
	# Phylum: Phylum classification but with phyla with a value of grouped as "other" 
# File : family_abundance.rds
	# Dataframe of family-level abundances for each sample.
	# Var1: sample identifier
	# Var2: Bacterial family name
	# value: Abundance value
# File: treehouse-2024-07-01.tre
	# Phylogenetic tree of arthropods families generated using TimeTree 
# File : projection.csv 
	# Table containing samples projected into the principal coordinate space via Edge PCA.
	# Coordinates were generated using Gappa to capture placement imbalances across phylogenetic tree edges from .jplace files.
# File : ArthropodMicrobiota.rds
	# The final metabarlist dataset composed of
	# A dataframe of OTUs characteristics named 'motus'
	# An OTUs abundance matrix named 'reads'
	# A dataframe of PCR's characteristics named 'pcrs'
	# A dataframe composed of samples characteristics named 'samples'
	# More information about the content of each file can be found in the "README_ArthropodMicrobiota_description" file.




	
