#!bin/bash

dir1=
ls > Domains.txt
while read line 
do
 cat $dir/$line >> $dir/Final.txt
done < Domains.txt;
