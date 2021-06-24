## filter file by the first column

awk -F '\t' 'FNR == NR {keys[$1]; next} {if ($1 in keys) print $1"\t"$2"\t"$3"\t"$4"\t"$5}' listfile.txt inputfile.txt > outputfile.txt