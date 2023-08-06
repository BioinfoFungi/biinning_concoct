# .
# ├── clustering_gt1000_taxassign.csv
# ├── contigs.fa
# ├── coverage_table.tsv
# └── run.sh


concoct --composition_file contigs.fa --coverage_file coverage_table.tsv -b concoct_output/
merge_cutup_clustering.py concoct_output/clustering_gt1000.csv > concoct_output/clustering_merged.csv
mkdir concoct_output/fasta_bins
extract_fasta_bins.py contigs.fa concoct_output/clustering_merged.csv --output_path concoct_output/fasta_bins

