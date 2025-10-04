#!/bin/bash
#products_source1.csv - products_source2.csv
cut -d ',' -f 1,2,3 products_source1.csv > extracted_source1.csv
cut -d ',' -f 1,2,3 products_source2.csv > extracted_source2.csv

#source1
sort -u extracted_source1.csv > cleaned_source1.csv

#source2
sort -u extracted_source2.csv > cleaned_source2.csv

#Merged datasets
cat cleaned_source1.csv cleaned_source2.csv | sort -u > merged_products.csv