wget https://hgdownload.soe.ucsc.edu/goldenPath/hg19/bigZips/hg19.fa.gz
gunzip hg19.fa.gz 
bigBedToBed ENCFF000OXR.bigBed ENCFF000OXR.bed
bedtools getfasta -fi hg19.fa -bed ENCFF000OXR.bed > ENCFF000OXR.fa
bedtools shuffle -i ENCFF000OXR.bed -g hg19.fa
faidx hg19.fa -i chromsizes > hg19.chromsizes
bedtools shuffle -i ENCFF000OXR.bed -g hg19.chromsizes > ENCFF000OXR_random.bed
bedtools getfasta -fi hg19.fa -bed ENCFF000OXR_random.bed > ENCFF000OXR_random.fa