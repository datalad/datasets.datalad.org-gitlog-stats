#!/bin/bash

set -eu

python code/git-annex-log-stats/plot-log-stats.py \
    --group OpenfMRI "stats/www/openfmri/*.json" \
    --group OpenNeuro "stats/www/openneuro/*.json" \
    --group OpenNeuro-Derivatives "stats/www/openneuro-derivatives/*.json" \
    --group DANDI "stats/www/dandi/dandisets/*.json" \
    --group CRCNS "stats/www/crcns/*json" \
    --group Labs "stats/www/labs/**/*.json" \
    --group Allen-Brain-Observatory "stats/www/allen-brain*/**/*.json" \
    --group CONP "stats/www/conp**/**/*.json" \
    --group Miscellaneous \
        "stats/www/abide*/**/*.json" \
        "stats/www/adhd*/**/*.json" \
        "stats/www/hbnssi*/**/*.json" \
        "stats/www/indi*/**/*.json" \
    --include-count \
    --plot-groups-total \
    --output plots/neurorepos-1.svg --log-scale
