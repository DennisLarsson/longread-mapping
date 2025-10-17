minimap2 -V 2>&1 | grep -qxF "2.30-r1287" || exit 1
samtools version 2>&1 | grep -qxF "samtools 1.19.2" || exit 1
