#!/bin/bash

configureBclToFastq.pl \
--fastq-cluster-count 0 \
--use-bases-mask Y300n,Y8,Y8,Y300n \
--input-dir /run/Data/Intensities/BaseCalls/ \
--output-dir /output/Unaligned

make -C /output/Unaligned/ -j $cpu_num
