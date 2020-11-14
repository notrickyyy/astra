gau $1 | grep "=" | tee $1.txt
python3 paramspider.py -d $ >> $1.txt
cat $1.txt | qsreplace "filter" | sort -u | tee $1_raw.txt
cat $1_raw.txt | grep -v -e ".svg" -e".woff" -e ".js" -e ".css" -e ".ttf" -e ".eot" | sort -u > $1_resolved.txt

