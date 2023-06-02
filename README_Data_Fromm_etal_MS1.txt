# File : Fromm_MS1_rawdata.tar.gz
	# - contains R1 and R2 fastq files of raw data
	# - nb of raw sequencing reads in R1 and R2 files: 5899356 reads each
# File : Fromm_MS1_ngsfilter_16S_Lez_2015_2018.tsv
	# - tab-sep text file containing the information to retrieve the sample origin of 
	#   each sequencing reads. Provided in a format compatible with the use of OBITools.
# File : Fromm_MS1_obitab.tsv
	# - contains a OTU by sample table after basic bioinformatic analysis 
	# 	with the OBITools package. Basic bioinformatics procedure includes reads pairing 
	# (default parameters), demultiplexing (2 errors on primers, 0 on tags), 
	# exclusion of sequences with counts = 1 (i.e. singletons), too short (>100 bp) 
	# or containing ambiguous bases, and clustering into OTUs at 97% sequence similarity 
	# - nb of sequencing reads : 11183625, nb of OTUs 97%: 8070
# File: Fromm_MS1_metabaR_diagnostic.html
	# A diagnostic file reporting on the Fromm_MS1_obitab characteristics and
	# additional filtering (contaminents, tagsjumps, etc.). 
	# Chloroplastic and Mitochondrial sequences were removed after this step.
# File : FrommMS1.cleandata.rds
	# The final metabarlist dataset composed of
	# A dataframe of OTUs characteristics named 'motus'
	# An OTUs abundance matrix named 'reads'
	# A dataframe of PCR's characteristics named 'pcrs'
	# A dataframe composed of samples characteristics named 'samples'
	# More information about the content of each file can be found in the "README_Data_description_Fromm_etal_MS1" file.




	
